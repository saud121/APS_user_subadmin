import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/route_manager.dart';
import 'dart:convert';
class AddEmployee{
   var auth="https://thor-aps.herokuapp.com/api/auth/";

    
   Future<void> RegisterPanel(String username,String email,String password,String assignrole) async {
    var url = auth+"register";
    try{
    var res = await http.post(Uri.parse(url), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
        body: jsonEncode(
        <String, dynamic>{
          "username":username,
          "email":email,
        "password":password,
        "assignrole":username,
        },
      ),

    );
    var resData = jsonDecode(res.body);
    if (resData["success"].toString() == "false") {  
    } else {
      Get.snackbar("Register","SuccessFull");
      print((res.body.toString()));
    }
    }
    catch (e){
      print("Error msg "+e.toString());
    }

  }
}