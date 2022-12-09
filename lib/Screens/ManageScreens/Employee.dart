import 'package:aps_super_admin/services/add_employees.dart';
import 'package:aps_super_admin/widgets/custom_textfiel.dart';
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
 List<String> _listEmoployees=["Alabhama","Jhon","Alice","Root","Joy","Buttler"];
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Employees "),
      ),
      body: Center(
        child:  ListView.builder(
          itemCount: _listEmoployees.length,
          itemBuilder: ((context, index) {
            return Dismissible(
               background: Container(
            color: gradientColor3,
          ),secondaryBackground: Container(
    color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.delete, color: Colors.white),
          Text('Remove Employee', style: TextStyle(color: Colors.white)),
        ],
      ),
    ),
  ),
          key: ValueKey<String>(_listEmoployees[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              _listEmoployees.removeAt(index);
            });
          },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                     leading: Icon(Icons.person),
                    tileColor: gradientColor2,
                     
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    title:CustomText(txt: _listEmoployees[index],fSize: 18,isBold: false,),
                    ),
              ),
                  
              
            );
          }
          )
          ,
      ),
      ),
    );
  }
}
