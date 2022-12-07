import 'package:aps_super_admin/Screens/EstablishmentScreens/Widget/new_chart.dart';
import 'package:aps_super_admin/Utils/colors.dart';
import 'package:aps_super_admin/widgets/custom_textfiel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class EmployeePerformace extends StatelessWidget {
  EmployeePerformace({super.key});
  final List<String> _listEmoployees=["Alabhama","Jhon","Alice","Root","Joy","Buttler"];

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
              title: Text("View Performace"),
            ),
            body: Center(
        child:  ListView.builder(
          itemCount: _listEmoployees.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Get.to(EmplPerformance());
                },
                   leading: Icon(Icons.person),
                  tileColor: gradientColor2,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  title:CustomText(txt: _listEmoployees[index],fSize: 18,isBold: false,),
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
class EmplPerformance extends StatelessWidget {
  const EmplPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Performace"),backgroundColor: Colors.black,),
      body: Center(child: BarChartSample3()),
    );
  }
}
 