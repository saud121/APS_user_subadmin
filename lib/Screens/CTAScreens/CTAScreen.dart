import 'package:aps_super_admin/Screens/CTAScreens/InnerPage/DeployScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class CTAScreen extends StatelessWidget {
  const CTAScreen({super.key});

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
            title: Text("CTA Screen"),
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Center(
                  child: Container(
                      height: 71,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                gradientColor1,
                                gradientColor2,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SubHeadingFontSize),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      height: 71,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                gradientColor1,
                                gradientColor2,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => DeployScreen());
                        },
                        child: Text(
                          "Deploy",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SubHeadingFontSize),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      height: 71,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                gradientColor1,
                                gradientColor2,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {
                          Get.snackbar("Call 911", "", colorText: Colors.white);
                        },
                        child: Text(
                          "Call",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SubHeadingFontSize),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      height: 71,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                gradientColor1,
                                gradientColor2,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Stay",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SubHeadingFontSize),
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
