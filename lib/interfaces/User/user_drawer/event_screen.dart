import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/user_drawer/share_visualfeeds.dart';
import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
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
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text("Events"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                CustomButton(txt: "At Location", onPressedf: (){
                  Get.snackbar("Location", "Send Location acknowledgement to Admins",colorText: gradientColor2,backgroundColor: Colors.white,dismissDirection: DismissDirection.horizontal , snackPosition: SnackPosition.BOTTOM);
                }),
              
                SizedBox(height: 25),
                 CustomButton(txt: "Working", onPressedf: (){
                  Get.snackbar("Working", "Send Working acknowledgement to Admins",colorText: gradientColor2,backgroundColor: Colors.white,dismissDirection: DismissDirection.horizontal ,snackPosition: SnackPosition.BOTTOM);
                 }),
               
                SizedBox(height: 25),
                 CustomButton(txt: "Contained", onPressedf: (){ Get.to(ShareVisualFeed());}),
               
                SizedBox(height: 25),
                 CustomButton(txt: "Request assistance", onPressedf: (){
                 
                 }),
              
                SizedBox(height: 25),
                 CustomButton(txt: "Call", onPressedf: (){
                  Get.snackbar("Calling", "Calling 911",colorText: gradientColor2,backgroundColor: Colors.white,dismissDirection: DismissDirection.horizontal ,snackPosition: SnackPosition.BOTTOM);
                  _callNumber();
                 }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String title;
  final Function onPressedf;

  MyContainer({
    super.key,
    required this.title,
    required this.onPressedf
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            gradientColor1,
            gradientColor2,
          ]),
          borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: onPressedf(),
        child: Text(
          title,
          style: GoogleFonts.robotoMono(
            color: Colors.white,
            fontSize: SubHeadingFontSize,
          ),
        ),
      ),
    );
  }
}
