
import 'dart:async';
import 'dart:io';
import 'package:aps_super_admin/widgets/custom_button.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShareVisualFeed extends StatefulWidget {
  const ShareVisualFeed({super.key});

  @override
  State<ShareVisualFeed> createState() => _ShareVisualFeedState();
}

class _ShareVisualFeedState extends State<ShareVisualFeed> {
  Future<void> findDevice(String title) async{ 
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
   Get.to(TakePictureScreen(camera: firstCamera,title:title));
   }
 
  @override
  Widget build(BuildContext context) {
     // Obtain a list of the available cameras on the device.
   
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
              findDevice("Take a Picture");
            },checkSize: false, ), SizedBox(width: 20,),
           
          ],
        ),
      ),
    );
  }
}

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
    required this.title,
  });

  final CameraDescription camera;
 final String title;
  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
 
    _controller = CameraController(
     
      widget.camera,
     
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title),backgroundColor: Colors.black,),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture'), backgroundColor: Colors.black,actions: [IconButton(onPressed: (() {
        
      }), icon: Icon(Icons.share))],),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}