import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(List<String> args) {
  runApp(const CameraGallery());
}

class CameraGallery extends StatefulWidget {
  const CameraGallery({Key? key}) : super(key: key);

  @override
  State<CameraGallery> createState() => _CameraGalleryState();
}

class _CameraGalleryState extends State<CameraGallery> {
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CameraApp',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CameraGallery"),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(child: getImage()),
                const SizedBox(height: 48.0),
                getButton('Camera', () {
                  getImageFromFile(ImageSource.camera);
                }),
                const SizedBox(height: 8.0),
                getButton('Gallery', () {
                  getImageFromFile(ImageSource.gallery);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Image getImage() {
    if (_imageFile != null) {
      return Image.file(
        _imageFile!,
        width: 300.0,
        height: 300.0,
        fit: BoxFit.cover,
        errorBuilder: (BuildContext context, Object error, StackTrace? trace) {
          return const Text('Error');
        },
        frameBuilder: (
          BuildContext context,
          Widget child,
          int? frame,
          bool wasSynchonouslyLoaded,
        ) {
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 2),
            curve: Curves.decelerate,
            child: child,
          );
        },
      );
    }

    return Image.asset(
      'asset/images/apple.jpg',
      width: 300.0,
      height: 300.0,
      fit: BoxFit.cover,
    );
  }

  Future<Widget?> getImageFromFile(ImageSource source) async {
    XFile? imageFile = await ImagePicker().pickImage(source: source);
    if (imageFile == null) {
      return null;
    }
    setState(() {
      _imageFile = File(imageFile.path);
    });
  }

  ElevatedButton getButton(String title, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        fixedSize: const Size.fromWidth(300),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }
}
