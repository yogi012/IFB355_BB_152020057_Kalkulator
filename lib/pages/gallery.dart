import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  File? image;
  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemp = File(image.path);
    setState(() => this.image = imageTemp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              image != null
                  ? Image.file(
                      image!,
                      width: 500,
                      height: 500,
                      fit: BoxFit.cover,
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromARGB(255, 233, 3, 3))),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 250),
                            child: Text("Select your image"),
                          ))),
                    ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (() => pickImage()),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 154, 254),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        "Gallery",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
