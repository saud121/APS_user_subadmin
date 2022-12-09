import 'package:aps_super_admin/Screens/LoginScreens/loginscreen.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../../Utils/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  bool isPasswordShown=true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Future<void> LoginPanel() async {
    var url = "https://thor-aps.herokuapp.com/api/auth/login";
    try{
      
    var res = await http.put(Uri.parse(url), headers: <String, String>{
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
      Get.to(LoginScreen());
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
                    "Forget Password",
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 57,
                        color:textColor),
                  ),
                  const SizedBox(height: 60),
          
                  Card(
                   elevation: .8,
                  
                  shape: RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(100)),
                   
                    child: CustomtextField(hintText: "Enter Email",
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
                  ),
                  SizedBox(height: 30),
                  
                
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                //       boxShadow: [
                //   BoxShadow(
                //     color: Color.fromARGB(255, 251, 101, 26),
                //     offset: Offset(1.0, 3.0), //(x,y)
                //      blurRadius: 4,
                //     //  spreadRadius: 3,
                //      blurStyle: BlurStyle.outer
                   
                //   ),
                // ],
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(LoginScreen());
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
