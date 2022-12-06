import 'package:aps_super_admin/Screens/EstablishmentScreens/Widget/new_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';


class EstablishmentState extends StatelessWidget {
  const EstablishmentState({super.key});

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
              title: Text("Establishments")),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Alabama",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: HeadingFontSize,
                            fontWeight: FontWeight.bold),
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
                            borderRadius: BorderRadius.circular(21)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("No. of Employees",
                                style: GoogleFonts.robotoMono(
                                    fontSize: SubHeadingFontSize,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Text(
                              "100",
                              style: GoogleFonts.robotoMono(
                                  fontSize: SubHeadingFontSize,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Performance Chart",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: HeadingFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BarChartSample3(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
