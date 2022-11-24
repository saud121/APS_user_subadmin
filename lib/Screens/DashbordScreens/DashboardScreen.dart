import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
            title: Text("Dashboard Screen"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Establishments",
                    style: GoogleFonts.robotoMono(
                        fontSize: HeadingFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                      child: Image.asset("assets/map.png")),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total :",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.black),
                      ),
                      Text(
                        "10",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Area Covered :",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.black),
                      ),
                      Text(
                        "1000 Miles",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 180,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Drones",
                            style: GoogleFonts.robotoMono(
                                fontSize: HeadingFontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0 ",
                                style: GoogleFonts.robotoMono(
                                    fontSize: SubHeadingFontSize,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "On Standby",
                                style: GoogleFonts.robotoMono(
                                    fontSize: SubHeadingFontSize,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3 ",
                                style: GoogleFonts.robotoMono(
                                    fontSize: SubHeadingFontSize,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "In Action",
                                style: GoogleFonts.robotoMono(
                                    fontSize: SubHeadingFontSize,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(height: 10),
                  Text("Sensors",
                      style: GoogleFonts.robotoMono(
                          fontSize: HeadingFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(height: 10),
                  Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                      child: Image.asset("assets/map.png")),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total :",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.black),
                      ),
                      Text(
                        "100",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "In Storage :",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.black),
                      ),
                      Text(
                        "60",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "In Field :",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.black),
                      ),
                      Text(
                        "40",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
