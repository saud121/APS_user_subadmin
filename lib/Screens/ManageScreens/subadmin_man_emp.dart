import 'package:aps_super_admin/Screens/DashbordScreens/DashboardScreen.dart';
import 'package:aps_super_admin/Screens/ManageScreens/ManageScreen.dart';
import 'package:aps_super_admin/interfaces/subadmin/screens/subadmindashboard.dart';
import 'package:aps_super_admin/widgets/custom_textfiel.dart';
import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/colors.dart';

class SubAdminManageEmpl extends StatelessWidget {
  const SubAdminManageEmpl({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color.fromARGB(255, 221, 219, 219), gradientColor3],
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
              title: Text("SubAdmin Manage Employees"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container (
                decoration: BoxDecoration(border: Border.all(),
                borderRadius: BorderRadius.circular(10)
                ),
 
               child: 
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Column (
                  
                  children:[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [      Column(
                    
                      children: [
                        CustomText(txt: "Total Employees",fSize:24,isBold: false,)
                      ],
                    ),
                    Column(
                      children: [
                       CustomText(txt:"100",fSize:24,isBold:false)
                      ],
                    ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [      Column(
                    
                      children: [
                        CustomText(txt:"1st Responedents",fSize:24,isBold:false)
                      ],
                    ),
                    Column(
                      children: [
                       CustomText(txt:"10",fSize:24,isBold: false,)
                      ],
                    ),
                    ],
                  ),         
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [      Column(
                    
                      children: [
                        CustomText(txt:"Support",fSize:24,isBold:false,)
                      ],
                    ),
                    Column(
                      children: [
                       CustomText(txt:"30",fSize:24,isBold: false,)
                      ],
                    ),
                    ],
                  ),               
                     ],),
               ),
               ),
               SizedBox(height: 10,),
                  CustomButton(txt:"View performance", onPressedf: (){
                    Get.off(ManageScreen());
                  },checkSize: false,),
                  SizedBox(height: 10,),
                  CustomButton(txt:"Search Employees", onPressedf: (){
                    Get.off(ManageScreen());
                  },checkSize: false,),
                  SizedBox(height: 10,),
                 Container(
       decoration: BoxDecoration(border: Border.all(),
       borderRadius: BorderRadius.circular(10)
       
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(txt:"Employee A",fSize:24,isBold: true,)
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "1st Respondent", onPressedf: (){},checkSize: true)
                  ],
                )
              ],
            ),
            Divider(
              thickness: 6,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomButton(txt: "View", onPressedf: (){},checkSize: true, )
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "Message", onPressedf: (){},checkSize: true,)
                  ],
                )
              ],
            )
          ],
         ),
       ),
    ),
    SizedBox(height: 10,),
     Container(
       decoration: BoxDecoration(border: Border.all(),
       borderRadius: BorderRadius.circular(10)
       
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(txt:"Employee B",fSize:24,isBold: true)
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "2nd Respondent", onPressedf: (){},checkSize: true)
                  ],
                )
              ],
            ),
            Divider(
              thickness: 6,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomButton(txt: "View", onPressedf: (){},checkSize: true, )
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "Message", onPressedf: (){},checkSize: true,)
                  ],
                )
              ],
            )
          ],
         ),
       ),
    ),
    SizedBox(height: 10,),
     Container(
       decoration: BoxDecoration(border: Border.all(),
       borderRadius: BorderRadius.circular(10)
       
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(txt:"Employee C",fSize:24,isBold: true,)
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "3rd Respondent", onPressedf: (){},checkSize: true)
                  ],
                )
              ],
            ),
            Divider(
              thickness: 6,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomButton(txt: "View", onPressedf: (){},checkSize: true, )
                  ],
                ),
                 Column(
                  children: [
                    CustomButton(txt: "Message", onPressedf: (){},checkSize: true,)
                  ],
                )
              ],
            )
          ],
         ),
       ),
    )
                ],
              ),
            ),
          )),
    );
  }
}
