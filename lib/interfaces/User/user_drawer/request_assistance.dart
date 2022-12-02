import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestAssitance extends StatelessWidget {
  const RequestAssitance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Request Assistance"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            CustomButton(txt: "Request Assistance", onPressedf: (){
              Get.snackbar("Thor APS", "Calling Thor",snackPosition: SnackPosition.BOTTOM);
            },)
          ],
        ),
      ),
    );
  }
}
