import 'package:aps_super_admin/Screens/EstablishmentScreens/EstablishmentState.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class EstablishmentScreen extends StatefulWidget {
  const EstablishmentScreen({super.key});

  @override
  State<EstablishmentScreen> createState() => _EstablishmentScreenState();
}

class _EstablishmentScreenState extends State<EstablishmentScreen> {
  int counter = 0;
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
            title: Text("Establishments"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 71,
                  width: double.infinity,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(21)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Establishment",
                            style: GoogleFonts.robotoMono(
                                fontSize: SubHeadingFontSize,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        Text("3",
                            style: GoogleFonts.robotoMono(
                                fontSize: SubHeadingFontSize,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SubHeadingFontSize,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Get.to(() => EstablishmentState()),
                  child: Container(
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
                        Text("Section : A",
                            style: GoogleFonts.robotoMono(
                                fontSize: SubHeadingFontSize,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        Text(
                          "Albama",
                          style: GoogleFonts.robotoMono(
                              fontSize: SubHeadingFontSize,
                              color: Colors.white),
                        )
                      ],
                    ),
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
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(21)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Section : B",
                          style: GoogleFonts.robotoMono(
                              fontSize: SubHeadingFontSize,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Text(
                        "Alaska",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.white),
                      )
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
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(21)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Section : C",
                          style: GoogleFonts.robotoMono(
                              fontSize: SubHeadingFontSize,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Text(
                        "Arizona",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
