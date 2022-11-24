import 'package:aps_super_admin/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, gradientColor3],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text("Events"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              MyContainer(
                title: "At Location",
              ),
              SizedBox(height: 20),
              MyContainer(
                title: "Working",
              ),
              SizedBox(height: 20),
              MyContainer(
                title: "Contained",
              ),
              SizedBox(height: 20),
              MyContainer(
                title: "Request assistance",
              ),
              SizedBox(height: 20),
              MyContainer(
                title: "Cannot contain",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String title;

  MyContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            gradientColor1,
            gradientColor2,
          ]),
          borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.robotoMono(
            color: Colors.white,
            fontSize: SubHeadingFontSize,
          ),
        ),
      ),
    );
  }
}
