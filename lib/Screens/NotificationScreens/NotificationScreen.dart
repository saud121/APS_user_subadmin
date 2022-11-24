import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isSwitched = true;
  bool isSwitched2 = true;
  bool isSwitched3 = true;
  bool isSwitched4 = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
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
                title: Text("Notification")),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text("Drone Notification",
                              style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: HeadingFontSize,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 71,
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor1,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Send to Establishments",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 71,
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor1,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Send to Employees",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched2,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched2 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Camera Notification",
                              style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: HeadingFontSize,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 71,
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor1,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Send to Establishments",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched3,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched3 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 71,
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor1,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Send to Employees",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched4,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched4 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Custom Notification",
                              style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: HeadingFontSize,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 207,
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        gradientColor1,
                                        gradientColor2,
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(36)),
                              child: TextFormField(
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                maxLines: 10,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your message here",
                                  hintStyle: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 71,
                                width: 67,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          gradientColor1,
                                          gradientColor2,
                                        ],
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: FaIcon(
                                      FontAwesomeIcons.share,
                                      color: Colors.black,
                                    )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 71,
                                width: 320,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          gradientColor1,
                                          gradientColor2,
                                        ],
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Send",
                                    style: GoogleFonts.robotoMono(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
