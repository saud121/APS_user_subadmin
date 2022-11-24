import 'package:aps_super_admin/Screens/StorageScreens/Pages/ViewManage.dart';
import 'package:aps_super_admin/Screens/StorageScreens/Pages/ViewStorage.dart';
import 'package:aps_super_admin/Utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 5,
                  centerSpaceRadius: 60,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffFECE2D),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Occupied',
                    style: GoogleFonts.robotoMono(
                        fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffBC0D0D),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Archive',
                    style: GoogleFonts.robotoMono(
                        fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xff66AFEF),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Remaining',
                    style: GoogleFonts.robotoMono(
                        fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 164,
                height: 58,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        gradientColor1,
                        gradientColor2,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.circular(21)),
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ViewStorage());
                  },
                  child: Text(
                    'View',
                    style: GoogleFonts.robotoMono(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 164,
                height: 58,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        gradientColor1,
                        gradientColor2,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.circular(21)),
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ViewManage());
                  },
                  child: Text(
                    'Manage',
                    style: GoogleFonts.robotoMono(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xffFECE2D),
            value: 75,
            title: '75%',
            radius: radius,
            titleStyle: GoogleFonts.robotoMono(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xffBC0D0D),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: GoogleFonts.robotoMono(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff66AFEF),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: GoogleFonts.robotoMono(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
