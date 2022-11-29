import 'package:aps_super_admin/services/add_employees.dart';
import 'package:aps_super_admin/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class EmployeeScreen extends StatefulWidget {
  EmployeeScreen({super.key});
  var Employeerole = Get.arguments;

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  String dropdownValue = "Sub Admin";
  bool isPasswordShown = true;
  bool isConfirmPassword = true;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  Dialo(context);
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
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back)),
            centerTitle: true,
            title: Text("Employees " + Get.arguments.toString()),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomtextField(
                      hintText: "Enter Username",
                      controller: _usernameController,
                      prefix: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardtype: TextInputType.emailAddress,
                      validate: (UserName) {
                        if (UserName!.isEmpty ||
                            UserName.length < 3 ||
                            UserName.contains(" ")) {
                          return "enter Correct UserName";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30),
                    CustomtextField(
                      hintText: "Enter Email",
                      controller: _emailController,
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
                        if (password!.isEmpty || password.length < 7) {
                          return "enter Correct password";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 30),

                    CustomtextField(
                      hintText: "Enter Confirm Password",
                      isPassword: isConfirmPassword,
                      controller: _passwordConfirmController,
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
                        if (password!.isEmpty || password.length < 7) {
                          return "enter Correct confirm password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Role",
                            style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20)),
                        DropdownButton(
                          value: dropdownValue,
                          items: [
                            DropdownMenuItem(
                              value: "Sub Admin",
                              child: Text(
                                "Sub Admin",
                              ),
                            ),
                            DropdownMenuItem(
                              value: "User",
                              child: Text("User"),
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: TextButton(
                        onPressed: () {
                          AddEmployee().RegisterPanel(
                            _usernameController.text,
                           _emailController.text, 
                           _passwordConfirmController.text,
                           dropdownValue.toString()
                           );
                        },
                        child: Text(
                          "Add Employee",
                          style: TextStyle(color: gradientColor2, fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

Dialo(BuildContext context) {
  String dropdownValue = "Sub Admin";
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Add Employee Role'),
      content: DropdownButton(
        value: dropdownValue,
        items: [
          DropdownMenuItem(
            value: "Sub Admin",
            child: Text(
              "Sub Admin",
            ),
          ),
          DropdownMenuItem(
            value: "User",
            child: Text("User"),
          ),
        ],
        onChanged: (String? value) {},
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
