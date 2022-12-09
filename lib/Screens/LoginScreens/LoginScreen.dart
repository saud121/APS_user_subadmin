import 'package:aps_super_admin/Screens/LoginScreens/controllerdata.dart';
import 'package:aps_super_admin/Screens/LoginScreens/forget_password.dart';
import 'package:aps_super_admin/services/authservice.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../Utils/colors.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final pageViewController = Get.put(TestPageViewController());

  bool isPasswordShown = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

    String? email;
  String? password;

  final _formKey = GlobalKey<FormState>();
  
   bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
  void signIn() {
    if (_formKey.currentState!.validate()) {
      pageViewController.isVisible.value? AuthService().userloginPanel(_emailController.text,_passwordController.text) :AuthService().subAdminLogin(_emailController.text,_passwordController.text);

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
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontFamily: "Major",
                        fontSize: 40,
                        color: gradientColor2),
                  ),
                  const SizedBox(height: 40),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Align(
                     alignment: Alignment.centerRight,
                      child: ToggleSwitch(
                        minWidth: 90.0,
                        cornerRadius: 20.0,
                        activeBgColors: [
                          [Colors.green[800]!],
                          [Colors.green[800]!]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: ['User', 'SubAdmin'],
                        radiusStyle: true,
                        onToggle: (index) {
                          index==1?pageViewController.ShowUser():pageViewController.ShowAdmin();
                         
                        },
                      ),
                    ),
                 ),
                   SizedBox(height: 10),
                
                  CustomtextField(
                    hintText: "Enter Email",
                    controller: _emailController,
                    onsave: (emails) =>{
                      email=emails
                    },

                    prefix: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardtype: TextInputType.emailAddress,
                    validate: (email) {
                      if (email!.isEmpty ||
                          email.length < 3 ||
                          !email.contains("@")) {
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
                    onsave: (password)=> {
                     password=this.password

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
                      if (password!.isEmpty || password.length < 3) {

                        return "enter Correct password";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Forgetpassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontFamily: "Major",
                            fontWeight: FontWeight.bold,
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
                        signIn();
                      },
                      child:  Text(
                        "Login",

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
