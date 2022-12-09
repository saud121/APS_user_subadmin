import 'package:aps_super_admin/Screens/CTAScreens/InnerPage/DeployScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class CTAScreen extends StatelessWidget {
  const CTAScreen({super.key});
_callNumber() async{
  const number = '911'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
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
            title: Text("CTA Screen",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
             
              children: [
                SizedBox(height: 100,),
                Center(
                  child: Container(
                      height: 71,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                gradientColor5,
                                gradientColor2,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: HeadingFontSize),
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
                                gradientColor5,
                                gradientColor2,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => DeployScreen());
                        },
                        child: Text(
                          "Deploy",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: HeadingFontSize),
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
                                gradientColor5,
                                gradientColor2,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {
                          Get.snackbar("Calling 911", "", backgroundColor: Colors.white,colorText: gradientColor2,dismissDirection: DismissDirection.horizontal);
                        _callNumber();
                        },
                        child: Text(
                          "Call",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: HeadingFontSize),
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
                                gradientColor5,
                                gradientColor2,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Stay",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: HeadingFontSize),
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
