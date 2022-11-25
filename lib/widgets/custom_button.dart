import 'package:aps_super_admin/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double buttonHeight= 29;
  final double? buttonWidth=150;
  final bool? checkSize;
  final double? fontSize=12;
  final String txt;
  final Function onPressedf;
  CustomButton({ required this.txt,
   required this.onPressedf,
   this.checkSize,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(

                    height: checkSize != true ?51: buttonHeight,
                    width: checkSize!=true? 255 :buttonWidth,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                               Color.fromARGB(255, 82, 10, 10),
                              gradientColor2,
                              
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        borderRadius: BorderRadius.circular(26)),
                    child: TextButton(
                        onPressed: (() {
                          onPressedf();
                        }),
                        child: Text(
                         txt,
                          style: GoogleFonts.robotoMono(
                              fontSize: checkSize!=true ?SubHeadingFontSize:fontSize,
                              color: Colors.white),
                        )),
                  );
  }
}
 