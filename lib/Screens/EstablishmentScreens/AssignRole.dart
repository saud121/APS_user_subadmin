import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class AssignRole extends StatelessWidget {
  const AssignRole({super.key});

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
              title: Text("Assign Role")),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                    height: 71,
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: gradientColor2,
                              backgroundImage: AssetImage("assets/avatar.png"),
                            ),
                            Text("  John",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: SubHeadingFontSize,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text("1st Respondent  ",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                            FaIcon(
                              FontAwesomeIcons.angleDown,
                              color: Colors.black,
                              size: 17,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 71,
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: gradientColor2,
                              backgroundImage: AssetImage("assets/avatar.png"),
                            ),
                            Text("  William",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: SubHeadingFontSize,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text("2nd Respondent  ",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                            FaIcon(
                              FontAwesomeIcons.angleDown,
                              color: Colors.black,
                              size: 17,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 71,
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: gradientColor2,
                              backgroundImage: AssetImage("assets/avatar.png"),
                            ),
                            Text("  Rose",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: SubHeadingFontSize,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text("3rd Respondent  ",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                            FaIcon(
                              FontAwesomeIcons.angleDown,
                              color: Colors.black,
                              size: 17,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 71,
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: gradientColor2,
                              backgroundImage: AssetImage("assets/avatar.png"),
                            ),
                            Text("  Joe",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: SubHeadingFontSize,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Supporter  ",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                            FaIcon(
                              FontAwesomeIcons.angleDown,
                              color: Colors.black,
                              size: 17,
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
