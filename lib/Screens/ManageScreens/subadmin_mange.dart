import 'package:aps_super_admin/Screens/EstablishmentScreens/AssignRole.dart';
import 'package:aps_super_admin/Screens/EstablishmentScreens/EstablishmentScreen.dart';
import 'package:aps_super_admin/Screens/ManageScreens/Employee.dart';
import 'package:aps_super_admin/Screens/ManageScreens/subadmin_man_emp.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class SubAdminManageScreen extends StatelessWidget {
  const SubAdminManageScreen({super.key});

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
              title: Text("SubAdmin Manage"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 51,
                  width: 255,
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
                        Get.to(() => SubAdminManageEmpl());
                      },
                      child: Text(
                        "Employees",
                        style: GoogleFonts.robotoMono(
                            fontSize: SubHeadingFontSize,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
          )),
    );
  }
}
