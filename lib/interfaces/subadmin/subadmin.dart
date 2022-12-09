import 'package:aps_super_admin/Screens/CTAScreens/CTAScreen.dart';
import 'package:aps_super_admin/Screens/FeedScreens/FeedScreen.dart';
import 'package:aps_super_admin/Screens/FeedScreens/Pages/DroneScreen.dart';
import 'package:aps_super_admin/Screens/LoginScreens/LoginScreen.dart';
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
  SubAdmin({super.key, required this.email});
  String email;
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
                      "Admin",
                      style: GoogleFonts.robotoMono(fontSize: 18),
                    ),
                  ),
                  accountEmail: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      widget.email,
                      style: GoogleFonts.robotoMono(fontSize: 18),
                    ),
                  ),
                  currentAccountPicture: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 190, 46, 46),
                        child: Image.asset("assets/avatar.png",)
                        )
                        ,
                  )),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.gauge,
                  
                ),
                title: Text(
                  "Dashboard",
                  style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),
                ),
                onTap: () {
                  Get.to(() => SubAdminDashboard());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.gear,
                  
                ),
                title: Text(
                  "Manage",
                  style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),
                ),
                onTap: () {
                  Get.to(() => SubAdminManageScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.solidBell,
                  
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),
                ),
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.squareRss,
                  
                ),
                title: Text(
                  "Feed",
                 style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),
                ),
                onTap: () {
                  Get.to(() => DroneScreen());
                },
              ),
              ListTile(
                horizontalTitleGap: 0,
                leading: FaIcon(
                  FontAwesomeIcons.phone,
                  
                ),
                title: Text(
                  "CTA",
                 style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),
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
                  child: Text("Sign Out",style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white, size: 40),
          title: Text("Sub Admin"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME TO",
                  style: TextStyle(
                      color: gradientColor1,
                      fontSize: 48,
                      fontFamily: "Major",
                      fontWeight: FontWeight.bold)),
                       Text("APS",
                  style: TextStyle(
                      color: gradientColor1,
                      fontSize: 48,
                      fontFamily: "Major",
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
