import 'package:aps_super_admin/Screens/FeedScreens/Pages/InnerPage/CameraScreen.dart';
import 'package:aps_super_admin/Screens/FeedScreens/Pages/InnerPage/DroneInnerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/colors.dart';

class DroneScreen extends StatelessWidget {
  const DroneScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              title: Text("Feed Screen"),
            ),
            body: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                            height: 229,
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor5,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              children: [
                                Text("Camera"
                                  ,
                                  style: GoogleFonts.robotoMono(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: HeadingFontSize),
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 6,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 44,
                                        width: 144,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  gradientColor1,
                                                  gradientColor2,
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 3))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Drone 1",
                                              style: GoogleFonts.robotoMono(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.angleDown,
                                              color: Colors.white,
                                            )
                                          ],
                                        )),
                                    Container(
                                        height: 44,
                                        width: 144,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  gradientColor1,
                                                  gradientColor2,
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 3))
                                            ]),
                                        child: TextButton(
                                          onPressed: () {
                                            Get.to(() => CameraScreen());
                                          },
                                          child: Text(
                                            "Live Tracking",
                                            style: GoogleFonts.robotoMono(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 6,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 229,
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor5,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              children: [
                                Text(
                                  "Drone"
                                  ,
                                  style: GoogleFonts.robotoMono(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: HeadingFontSize),
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 6,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 44,
                                        width: 144,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  gradientColor1,
                                                  gradientColor2,
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 3))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Drone 1",
                                              style: GoogleFonts.robotoMono(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.angleDown,
                                              color: Colors.white,
                                            )
                                          ],
                                        )),
                                    Container(
                                        height: 44,
                                        width: 144,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  gradientColor1,
                                                  gradientColor2,
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 3))
                                            ]),
                                        child: TextButton(
                                          onPressed: () {
                                            Get.to(() => DroneInnerScreen());
                                          },
                                          child: Text(
                                            "Live Footage",
                                            style: GoogleFonts.robotoMono(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
