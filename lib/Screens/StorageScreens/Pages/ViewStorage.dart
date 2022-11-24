import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../Utils/colors.dart';

class ViewStorage extends StatefulWidget {
  const ViewStorage({super.key});

  @override
  State<ViewStorage> createState() => _ViewStorageState();
}

class _ViewStorageState extends State<ViewStorage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    final kToday = DateTime.now();
    final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
    final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, gradientColor3],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back)),
              centerTitle: true,
              title: Text("View Storage")),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TableCalendar(
                    firstDay: kFirstDay,
                    lastDay: kLastDay,
                    focusedDay: _focusedDay,
                    calendarFormat: _calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(_selectedDay, selectedDay)) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      }
                    },
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 71,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Center(
                      child: Text("Video Feed 1",
                          style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 71,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Center(
                      child: Text("Video Feed 2",
                          style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 71,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Center(
                      child: Text("Video Feed 3",
                          style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
