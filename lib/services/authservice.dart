import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class AuthService{
  Dio dio=Dio();
   login(email,password) async{
    try{
      return await dio.post("https://thor-aps.herokuapp.com/login", data: {
        "email":email,
        "password":password
      },options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on DioError catch (e){
      Fluttertoast.showToast(
        msg: e.response!.data["msg"],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
     
    }
    
  }
}