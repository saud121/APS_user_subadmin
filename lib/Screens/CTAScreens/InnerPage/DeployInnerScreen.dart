import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/colors.dart';

class DeployInnerScreen extends StatelessWidget {
  const DeployInnerScreen({super.key});

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
                Container(
                  height: 229,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pin.png"),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "37.9020 N, 122.0840 W",
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SubHeadingFontSize),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                        Get.snackbar("Drone Deployed", "Dismiss",
                            colorText: Colors.white);
                      },
                      child: Text(
                        "Deploy",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: SubHeadingFontSize),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
