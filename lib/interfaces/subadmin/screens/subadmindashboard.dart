import 'dart:ui';

import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/widgets/custom_textfiel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            SizedBox(child: Image.asset("assets/submap.png"),width: Get.width*.75,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container (
                decoration: BoxDecoration(border: Border.all(),
                borderRadius: BorderRadius.circular(10)
                ),

                
               child: 
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column (
                  children:[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [      Column(
                    
                      children: [
                        CustomText(txt: "Total Employees",fSize:20,isBold:true)
                      ],
                    ),
                    Column(
                      children: [
                       CustomText(txt:"10",fSize:20,isBold:true)
                      ],
                    ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [      Column(
                    
                      children: [
                        CustomText(txt:"Area Under Jurisdiction",fSize:20,isBold:true)
                      ],
                    ),
                    Column(
                      children: [
                       CustomText(txt:"500m",fSize:20,isBold: true,)
                      ],
                    ),
                    ],
                  ),
                                   
                     ],),
               ),
               
               
               ),
            ),

           ],
         ),
       )
    );
  }
}

