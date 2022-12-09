import 'package:aps_super_admin/Screens/EstablishmentScreens/Widget/new_chart.dart';
import 'package:aps_super_admin/Screens/LoginScreens/loginscreen.dart';
import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/user_drawer/request_assistance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_drawer/event_screen.dart';
import 'user_drawer/settingscreen.dart';

class UserDashboardScreen extends StatelessWidget {
  UserDashboardScreen({super.key, required this.email});
  String email;

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
            title: Text("Dashboard"),
            centerTitle: true,
          ),
          drawer: Drawer(
              child: ListView(children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("User"),
              accountEmail: Text(email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "U",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => RequestAssitance());
              },
              leading: Icon(Icons.call),
              title: Text("Request Assitance",style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),),
            ),
            ListTile(
              onTap: () {
                Get.to(() => EventScreen());
              },
              leading: Icon(Icons.event),
              title: Text("Events",style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),),
            ),
            ListTile(
              onTap: () {
                Get.to(() => SettingScreen());
              },
              leading: Icon(Icons.settings),
              title: Text("Settings",style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 20,
                       ),),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
          ])),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Perforamnce Chart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SubHeadingFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BarChartSample3()
            ],
          )),
    );
  }
}
