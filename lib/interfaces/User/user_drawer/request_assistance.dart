import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/user_drawer/event_screen.dart';
import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestAssitance extends StatelessWidget {
  const RequestAssitance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Request Assistance",style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 100,
                  width: Get.width*0.9,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 83, 4, 4),
                            gradientColor2,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                      borderRadius: BorderRadius.circular(26)),
                  child: TextButton(
                      onPressed: () {
                        Get.to(EventScreen());
                      Get.snackbar("Thor APS", "Calling Thor",colorText: gradientColor2,backgroundColor: Colors.white,dismissDirection: DismissDirection.horizontal ,snackPosition: SnackPosition.BOTTOM);
                      },
                      child: Text(
                       "Request Assistance",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize, color: Colors.white,fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
      ),
    );
  }
}