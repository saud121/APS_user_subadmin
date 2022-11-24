import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  String dropdownValue = "Sub Admin";
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
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back)),
            centerTitle: true,
            title: Text("Employees"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 77,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.robotoMono(
                        color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      hintStyle: GoogleFonts.robotoMono(
                          color: Colors.white, fontSize: 20),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 77,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.robotoMono(
                        color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      hintStyle: GoogleFonts.robotoMono(
                          color: Colors.white, fontSize: 20),
                      border: InputBorder.none,
                    ),
                  ),
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
                    height: 77,
                    width: 355,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        gradientColor1,
                        gradientColor2,
                      ]),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Add Employee",
                          style: GoogleFonts.robotoMono(
                              color: Colors.white, fontSize: 20)),
                    )),
              ],
            ),
          ),
        ));
  }
}
