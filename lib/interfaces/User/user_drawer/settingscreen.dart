import 'package:aps_super_admin/Screens/LoginScreens/LoginScreen.dart';
import 'package:aps_super_admin/interfaces/User/user_drawer/change_password.dart';
import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Setting Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomButton(txt: "Profile", onPressedf: (){}),
            // SizedBox(
            //   height: 10,
            // ),
            CustomButton(txt: "Change password", onPressedf: (){
              Get.to(ChangePassword());
            }),
           
            SizedBox(
              height: 10,
            ),
            CustomButton(txt: "Logout", onPressedf: (){
              Get.to(LoginScreen());
            }),

          ],
        ),
      ),
    );
  }
}
