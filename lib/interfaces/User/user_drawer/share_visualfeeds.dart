import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShareVisualFeed extends StatelessWidget {
  const ShareVisualFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Share"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(txt: "Share Image", onPressedf: (){
              
            },checkSize: true, ), SizedBox(width: 20,),
             CustomButton(txt: "Share Video", onPressedf: (){},checkSize: true,)
          ],
        ),
      ),
    );
  }
}
