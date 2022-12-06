import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/dashboard_screen.dart';
import 'package:aps_super_admin/interfaces/subadmin/subadmin.dart';
import 'package:aps_super_admin/services/config.dart';
import 'package:aps_super_admin/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  static var client = http.Client();
  Future<void> userloginPanel(String email, String password) async {
    var url =  Uri.parse(Config.apiURL);
    try{
    var res = await client.post(
     url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{"email": email, "password": password},
      ),
    );
    var resData = jsonDecode(res.body);
    if (resData["success"].toString() == "false") {
       CustomSnackbar("Invalid", "Invalid Credentials");
    } else {
     CustomSnackbar("Login", "Login SuccessFull");
      Get.to(UserDashboardScreen());
    }
    }
    catch(e){
      CustomSnackbar("Error", e.toString());
    }
  }

  Future<void> subAdminLogin(String email, String password) async {
     var url =  Uri.parse(Config.apiURL);
    try {
      var res = await client.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{"email": email, "password": password},
        ),
      );
      var resData = jsonDecode(res.body);
      if (resData["success"].toString() == "false") {
      } else {
        CustomSnackbar("Login", "SuccessFully Login");
        Get.to(SubAdmin());
        
      }
    } catch (e) {
       CustomSnackbar("Error", e.toString());
    }
  }
}
