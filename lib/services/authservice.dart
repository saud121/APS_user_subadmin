import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AuthService{
  Dio dio=Dio();
   login(email,password) async{

    try{
      return await dio.post("https://thor-aps.herokuapp.com/api/auth/login", data: {
        "email":email,
        "password":password
      },options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on DioError catch (e){
      print("error msg " +e.message);
    //   Fluttertoast.showToast(
    //     msg: e.message,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
     
    }
    
  }
    logins(String email, String password) async {

    final response = await http.post(
      Uri.parse('https://thor-aps.herokuapp.com/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, dynamic>{
          "email":email,
        "password":password
        },
      ),
    );
    var resp = jsonDecode(response.body);

    if (resp.toString()==true) {
      print("login success ");
     
    } else {
     
      throw Exception('Failed to');
    }
  }

}