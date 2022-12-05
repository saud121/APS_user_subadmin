import 'package:aps_super_admin/Screens/LoginScreens/forget_password.dart';
import 'package:aps_super_admin/interfaces/User/dashboard_screen.dart';
import 'package:aps_super_admin/interfaces/subadmin/subadmin.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../../Utils/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordShown=true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Future<void> loginPanel() async {
    var url = "https://thor-aps.herokuapp.com/api/auth/login";
    try{
    var res = await http.post(Uri.parse(url), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
        body: jsonEncode(
        <String, dynamic>{
          "email":_emailController.text,
        "password":_passwordController.text
        },
      ),

    );
    var resData = jsonDecode(res.body);
    if (resData["success"].toString() == "false") {  
    } else {
     
      print((res.body.toString()));
    }
    }
    catch (e){
      print("Error msg "+e.toString());
    }

  }

  void signIn() {
    if (_formKey.currentState!.validate()) {
       
      // if (_emailController.text.trim()== _email.trim()) {
       
       
    //   } else if (_emailController.text == _subadmin) {
    //     Get.to(() => SubAdmin());
    //   }
    //   else if (_emailController.text == _user) {
    //   Get.to(() => DashboardScreen());
    // }
    
    // } else{
    //   print("Invalid form");
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
                    "SIGN IN",
                    style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 57,
                        color: gradientColor2),
                  ),
                  const SizedBox(height: 60),
                  // Container(
                  //   height: 77,
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Colors.white,
                  //       width: 1,
                  //     ),
                  //     borderRadius: BorderRadius.circular(36),
                  //   ),
                  //   child: TextFormField(
                  //     controller: _emailController,
                  //     style: GoogleFonts.robotoMono(
                  //         color: Colors.white, fontSize: 20),
                  //     decoration: InputDecoration(
                  //       hintText: "Email",
                  //       hintStyle: TextStyle(
                  //           fontFamily: "Major",
                  //           color: Colors.white,
                  //           fontSize: 28),
                  //       border: InputBorder.none,
                  //     ),
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Please enter username';
                  //       } else if (value != _email && value != _subadmin) {
                  //         return 'Please enter valid username';
                  //       }
                  //       return null;
                  //     },
                  //   ),
                  // ),
                  CustomtextField(hintText: "Enter Email",
                  controller: _emailController,
                  prefix: Icon(Icons.person,color: Colors.black,),
                  textInputAction: TextInputAction.next,
                  keyboardtype: TextInputType.emailAddress,
                  validate: (email) {
                    if(email!.isEmpty || email.length<3 || !email.contains("@")){
                      return "enter Correct Email";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 30),
                  
                 CustomtextField(
                                    hintText: "Enter Password",
                                    isPassword: isPasswordShown,
                                    controller: _passwordController,
                                    onsave: (password) {
                                      // _formData['password'] = password ?? " ";
                                    },
                                    prefix: Icon(Icons.vpn_key_rounded,color: Colors.black,),
                                    suffix: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isPasswordShown = !isPasswordShown;
                                        });
                                      },
                                      icon: isPasswordShown
                                          ? Icon(Icons.visibility,color: Colors.black,)
                                          : Icon(Icons.visibility_off,color: Colors.black,),
                                    ),
                                    validate: (password) {
                                      if (password!.isEmpty ||
                                          password.length < 7) {
                                        return "enter Correct password";
                                      }
                                      return null;
                                    },
                                  ),
      
                  //! Container(
                  //   height: 77,
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Colors.white,
                  //       width: 1,
                  //     ),
                  //     borderRadius: BorderRadius.circular(36),
                  //   ),
                  //!  child: TextFormField(
                  //     controller: _passwordController,
                  //     obscureText: true,
                  //     style: GoogleFonts.robotoMono(
                  //         color: Colors.white, fontSize: 20),
                  //     decoration: InputDecoration(
                  //       hintText: "Password",
                  //       hintStyle: TextStyle(
                  //           fontFamily: "Major",
                  //           color: Colors.white,
                  //           fontSize: 28),
                  //       border: InputBorder.none,
                  //     ),
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Please enter password';
                  //       } else if (value != "admin123") {
                  //         return 'Please enter valid password';
                  //       }
                  //       return null;
                  //     },
                  //   ),
                  // ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                         Get.to( Forgetpassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontFamily: "Major",
                              color: gradientColor2,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //  Get.to(WelcomeScreen());
                        Get.to(SubAdmin());
                        // LoginPanel();
                        // AuthService().login(_emailController.text, _passwordController.text);
                    //      AuthService().login(_emailController.text,_passwordController.text)
                    //      .then((val){
                    //       print("value datas "+val.data);
                    //  if(val.data['success']){
                    //       Get.to(() => WelcomeScreen());
                    //            }
                    //      }
                    //      );
                      },
          
        
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontFamily: "Major",
                            color: gradientColor2,
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
