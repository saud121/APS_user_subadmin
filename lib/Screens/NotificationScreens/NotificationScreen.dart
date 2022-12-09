import 'package:aps_super_admin/interfaces/subadmin/screens/subadmindashboard.dart';
import 'package:aps_super_admin/widgets/custom_textfiel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isSwitched = true;
  bool isSwitched2 = true;
  bool isSwitched3 = true;
  bool isSwitched4 = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color.fromARGB(255, 216, 215, 215), gradientColor3],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
                title: Text("Notification")),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text("Drone Notification",
                              style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: HeadingFontSize,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 71,
                            width: Get.width * .84,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor4,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  txt: "Send to Establishments",
                                  fSize: 18,
                                  isBold: false,
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 71,
                            width: Get.width * .84,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor4,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  txt: "Send to Employees",
                                  fSize: 18,
                                  isBold: false,
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched2,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched2 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CustomText(
                            txt: "Camera Notification",
                            fSize: HeadingFontSize,
                            isBold: true,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 71,
                            width: Get.width * .84,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor4,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  txt: "Send to Establishments",
                                  fSize: 18,
                                  isBold: false,
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched3,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched3 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 71,
                            width: Get.width * .84,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor4,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  txt: "Send to Employees",
                                  fSize: 18,
                                  isBold: false,
                                ),
                                Switch(
                                    activeColor: gradientColor3,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched4,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched4 = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CustomText(
                              txt: "Custom Notification",
                              fSize: HeadingFontSize,
                              isBold: true),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 180,
                            width: Get.width * .84,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      gradientColor4,
                                      gradientColor2,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(36)),
                            child: TextFormField(
                              style: GoogleFonts.robotoMono(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              maxLines: 10,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter your message here",
                                hintStyle: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Container(
                                height: 71,
                                width: Get.width * 0.84,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          gradientColor4,
                                          gradientColor2,
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Send",
                                    style: GoogleFonts.robotoMono(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
