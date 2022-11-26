import 'package:aps_super_admin/Utils/colors.dart';
import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final Function(String?)? onsave;
  final int? maxlines;
  final bool isPassword;
  final bool enable;
  final bool? check;
  final TextInputType? keyboardtype;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Widget? prefix;
  final Widget? suffix;
  const CustomtextField(
      {this.hintText,
      this.controller,
      this.validate,
      this.onsave,
      this.maxlines,
      this.isPassword = false,
      this.enable = true,
      this.check,
      this.keyboardtype,
      this.textInputAction,
      this.focusNode,
      this.prefix,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: enable == true ? true : enable,
        maxLines: maxlines == null ? 1 : maxlines,
        onSaved: onsave,
        cursorColor: Colors.black,
        focusNode: focusNode,
        textInputAction: textInputAction,
        keyboardType: keyboardtype == null ? TextInputType.name : keyboardtype,
        controller: controller,
        validator: validate,
        style: TextStyle(color: Colors.black),
        obscureText: isPassword == false ? false : true,
        decoration: InputDecoration(
          hintStyle: TextStyle(
                              fontFamily: "Major",
                              color: Colors.white,
                              fontSize: 23),
          prefixIcon: prefix,
          suffixIcon: suffix,
          labelText: hintText ?? "Hint text...",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid,
                 color: Colors.black
                ),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color(0xFF909E9E),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.green,
            ),
          ),
        ));
  }
}