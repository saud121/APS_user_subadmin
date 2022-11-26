import 'package:aps_super_admin/interfaces/WelcomeScreens/WelcomeScreen.dart';
import 'package:aps_super_admin/interfaces/subadmin/subadmin.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/colors.dart';
import '../../interfaces/User/DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String _email = "admin";
  final String _subadmin = "subadmin";
  final String _user = "user";
  bool isPasswordShown=true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void signIn() {
    if (_formKey.currentState!.validate()) {
      if (_emailController.text == _email) {
        Get.to(() => WelcomeScreen());
      } else if (_emailController.text == _subadmin) {
        Get.to(() => SubAdmin());
      }
    } else if (_emailController.text == _user) {
      Get.to(() => DashboardScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 246, 105, 105),
            Color.fromARGB(221, 80, 48, 48)
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
                        color: Colors.white),
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
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontFamily: "Major",
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 77,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: TextButton(
                      onPressed: () {
                        signIn();
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontFamily: "Major",
                            color: Colors.white,
                            fontSize: 40),
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
