import 'package:aps_super_admin/Screens/EstablishmentScreens/AssignRole.dart';
import 'package:aps_super_admin/Screens/EstablishmentScreens/EstablishmentScreen.dart';
import 'package:aps_super_admin/Screens/ManageScreens/Employee.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

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
              title: Text("Manage"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 353,
                        width: 355,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(36)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 51,
                              width: 255,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        gradientColor4,
                                        gradientColor2,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                  borderRadius: BorderRadius.circular(26)),
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(() => EstablishmentScreen());
                                  },
                                  child: Text(
                                    "Establishments",
                                    style: GoogleFonts.robotoMono(
                                        fontSize: SubHeadingFontSize,
                                        color: Colors.white),
                                  )),
                            ),
                            SizedBox(height: 20),
                            Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 51,
                              width: 255,
                              decoration: BoxDecoration(
                                   gradient: LinearGradient(
                                      colors: [
                                        gradientColor4,
                                        gradientColor2,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                  borderRadius: BorderRadius.circular(26)),
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(() => EmployeeScreen());
                                  },
                                  child: Text(
                                    "Employees",
                                    style: GoogleFonts.robotoMono(
                                        fontSize: SubHeadingFontSize,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 51,
                        width: 255,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                      colors: [
                                        gradientColor4,
                                        gradientColor2,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                            borderRadius: BorderRadius.circular(26)),
                        child: TextButton(
                            onPressed: () {
                              Get.to(() => AssignRole());
                            },
                            child: Text(
                              "Assign Role",
                              style: GoogleFonts.robotoMono(
                                  fontSize: SubHeadingFontSize,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
