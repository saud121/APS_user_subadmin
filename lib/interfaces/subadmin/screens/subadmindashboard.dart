import 'dart:ui';

import 'package:aps_super_admin/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SubAdminDashboard extends StatelessWidget {
  const SubAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                                         
      appBar: AppBar(title: Text("Subadmin Dashboard"),
       backgroundColor: Colors.black,
          
            centerTitle: true,
      )
      ,
       body:Container(
         decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, gradientColor3],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),                           
         child: Column(
          
           children: [
            SizedBox(child: Image.asset("assets/submap.png"),),
            Container(
             child:
             Column(children: [

              Row(
                children: [      Text("Total Employees",style: GoogleFonts.robotoMono(
                                       color: Colors.white,
                                       fontSize: HeadingFontSize,
                                       fontWeight: FontWeight.bold)),
                ],
              ),

                                   Text("Area Under Jurisdiction  500m",style: GoogleFonts.robotoMono(
                                   color: Colors.white,
                                   fontSize: HeadingFontSize,
                                   fontWeight: FontWeight.bold)),
                 ],),
             
             decoration: BoxDecoration(border: Border.all()),
             ),

           ],
         ),
       )
    );
  }
}