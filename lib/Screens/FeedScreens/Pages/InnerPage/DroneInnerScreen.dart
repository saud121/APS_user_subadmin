import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Utils/colors.dart';

class DroneInnerScreen extends StatelessWidget {
  const DroneInnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color.fromARGB(255, 231, 230, 230), gradientColor3],
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
            title: Text("Drone",style:TextStyle(fontWeight: FontWeight.bold)),
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Live Tracking",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: HeadingFontSize),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 229,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/track.png"),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Live Footage",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: HeadingFontSize),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 229,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/footage.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
