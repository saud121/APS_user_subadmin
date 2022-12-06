import 'package:aps_super_admin/Screens/CTAScreens/CTAScreen.dart';
import 'package:aps_super_admin/Screens/FeedScreens/FeedScreen.dart';
import 'package:aps_super_admin/Screens/LoginScreens/LoginScreen.dart';
import 'package:aps_super_admin/Screens/ManageScreens/ManageScreen.dart';
import 'package:aps_super_admin/Screens/ManageScreens/subadmin_mange.dart';
import 'package:aps_super_admin/Screens/NotificationScreens/NotificationScreen.dart';
import 'package:aps_super_admin/Screens/StorageScreens/StorageScreen.dart';
import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/subadmin/screens/subadmindashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SubAdmin extends StatefulWidget {
  const SubAdmin({super.key});

  @override
  State<SubAdmin> createState() => _SubAdminState();
}

class _SubAdminState extends State<SubAdmin> {
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
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "SubAdmin",
                      style: GoogleFonts.robotoMono(fontSize: 18),
                    ),
                  ),
                  accountEmail: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "123@gmail.com",
                      style: GoogleFonts.robotoMono(fontSize: 18),
                    ),
                  ),
                  currentAccountPicture: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/avatar.png")),
                  )),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.gauge,
                  color: gradientColor2,
                ),
                title: Text(
                  "Dashboard",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => SubAdminDashboard());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.gear,
                  color: gradientColor2,
                ),
                title: Text(
                  "Manage",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => SubAdminManageScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: gradientColor2,
                ),
                title: Text(
                  "Notifications",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.database,
                  color: gradientColor2,
                ),
                title: Text(
                  "Notification Panel",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => StorageScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.squareRss,
                  color: gradientColor2,
                ),
                title: Text(
                  "Feed",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => FeedScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.phone,
                  color: gradientColor2,
                ),
                title: Text(
                  "CTA",
                  style: GoogleFonts.robotoMono(
                      color: gradientColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => CTAScreen());
                },
              ),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text("Sign Out"),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: gradientColor2, size: 40),
          title: Text("Sub Admin"),
        ),
        body: Center(
          child: Text("WELCOME TO APS",
              style: TextStyle(
                  color: gradientColor2,
                  fontSize: 48,
                  fontFamily: "Major",
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
