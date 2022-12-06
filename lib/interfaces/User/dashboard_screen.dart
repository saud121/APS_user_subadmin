import 'package:aps_super_admin/Screens/EstablishmentScreens/Widget/new_chart.dart';
import 'package:aps_super_admin/Screens/LoginScreens/loginscreen.dart';
import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/user_drawer/request_assistance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_drawer/event_screen.dart';
import 'user_drawer/settingscreen.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({super.key});

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
              accountEmail: Text("123@gmail.com"),
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
              title: Text("Request Assitance"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => EventScreen());
              },
              leading: Icon(Icons.event),
              title: Text("Events"),
            ),
            ListTile(
              onTap: () {
                Get.to(() => SettingScreen());
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Get.to(LoginScreen());
              },
              child: Text("Sign Out"),
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
