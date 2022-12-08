import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends StatelessWidget {
  final String txt;
  final double fSize;
  final bool isBold;
 CustomText({required this.txt, required this.fSize,required this.isBold});

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Text(txt,style: GoogleFonts.robotoMono(
                                             color: Colors.white,
                                             fontSize: fSize,
                                             fontWeight: isBold==true? FontWeight.bold:null)),
  );
}
  
}