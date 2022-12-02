import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/interfaces/User/dashboard_screen.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<ChangePassword> {
  bool isPasswordShown = true;
  bool isConfirmPassword = true;
  final TextEditingController _oldpasswordController = TextEditingController();
  final TextEditingController _newpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Future<void> changePasswordPanel() async {
    var url = "https://thor-aps.herokuapp.com/api/auth/";
    try {
      var res = await http.put(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "oldpassword": _oldpasswordController,
            "newpassword": _newpasswordController.text
          },
        ),
      );
      var resData = jsonDecode(res.body);
      if (resData["success"].toString() == "false") {
      } else {
        Get.to(UserDashboardScreen());
        print((res.body.toString()));
      }
    } catch (e) {
      print("Error msg $e");
    }
  }

  void signIn() {
    if (_formKey.currentState!.validate()) {
      // oldpassword.text.trim()== _email.trim()) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 245, 243, 243),
            Color.fromARGB(221, 176, 176, 176)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 57,
                        color: textColor),
                  ),
                  const SizedBox(height: 60),
                 
                    CustomtextField(
                      hintText: "Enter Old Password",
                      isPassword: isPasswordShown,
                      controller: _oldpasswordController ,
                      onsave: (password) {
                        // _formData['password'] = password ?? " ";
                      },
                      prefix: Icon(
                        Icons.vpn_key_rounded,
                        color: Colors.black,
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordShown = !isPasswordShown;
                          });
                        },
                        icon: isPasswordShown
                            ? Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              ),
                      ),
                      validate: (password) {
                        if (password!.isEmpty) {
                          return "Old password can't be empty";
                        }
                         
                        return null;
                      },
                    ),

                    SizedBox(height: 30),

                    CustomtextField(
                      hintText: "Enter New Password",
                      isPassword: isConfirmPassword,
                      controller: _newpasswordController,
                      onsave: (password) {
                        // _formData['password'] = password ?? " ";
                      },
                      prefix: Icon(
                        Icons.vpn_key_rounded,
                        color: Colors.black,
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isConfirmPassword = !isConfirmPassword;
                          });
                        },
                        icon: isConfirmPassword
                            ? Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              ),
                      ),
                      validate: (password) {
                        if (password!.isEmpty ){
                          return "New password can't be empty";
                        }
                        else if( password.length < 7) {
                          return "New password should be more than 7 char";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white,
                    ),
                    child: TextButton(
                      onPressed: () {
                        changePasswordPanel();
                      },
                      child: Text(
                        "Update",
                        style: TextStyle(
                            fontFamily: "Times new Roman",
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 9, 32, 100),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
