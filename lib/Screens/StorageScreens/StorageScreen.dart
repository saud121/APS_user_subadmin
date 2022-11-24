import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';
import 'Widget/myChart.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

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
              title: Text("Storage")),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                PieChartSample2(),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Storage",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                    Text("1 TB",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Last 7 Days",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                    Text("10 GB",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Last 2 Months",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                    Text("100 GB",
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: SubHeadingFontSize,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
