import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(List<String> args) => runApp(const FileImage());

class FileImage extends StatefulWidget {
  const FileImage({Key? key}) : super(key: key);

  @override
  State<FileImage> createState() => FileImageState();
}

class FileImageState extends State<FileImage> {
  File? _imageFile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: getImage(),
              ),
              const SizedBox(height: 30.0),
              getElevatedButton('Camera', () {
                getImageFromFile(ImageSource.camera);
              }),
              const SizedBox(height: 8.0),
              getElevatedButton('Gallery', () {}),
            ],
          ),
        ),
      ),
    );
  }

  void getImageFromFile(ImageSource source) async {
    XFile? imageFile = await ImagePicker().pickImage(source: source);
    if (imageFile == null) return;
    setState(() {
      _imageFile = File(imageFile.path);
    });
  }

  ElevatedButton getElevatedButton(String title, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 8.0,
          onPrimary: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          fixedSize: const Size.fromWidth(300.0)),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }

  Image getImage() {
    if (_imageFile != null) {
      return Image.file(
        _imageFile!,
        width: 300,
        height: 300,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        'asset/images/apple.jpg',
        width: 300,
        height: 300,
        fit: BoxFit.cover,
      );
    }
  }
}
