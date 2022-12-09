import 'package:aps_super_admin/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
CustomSnackbar(String title,String msg){
  return Get.snackbar(
          title,
        msg,
        backgroundColor: Colors.white,
        isDismissible: true,
        colorText: gradientColor2,
        dismissDirection: DismissDirection.horizontal
        );
}