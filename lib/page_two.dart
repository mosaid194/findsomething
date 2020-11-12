import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utility.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  static TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  File _image;
  final picker = ImagePicker();
  Image imageFromPreferences;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGalary() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  loadImageFromPreferences() {
    Utility.getImageFromPreferences().then((img) {
      if (null == img) {
        return;
      }
      setState(() {
        imageFromPreferences = Utility.imageFromBase64String(img);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "يرجا ادخال رقم الموبيل ",
            style: optionStyle,
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "الرقم",
                fillColor: Colors.red,
                focusColor: Colors.red,
                border: InputBorder.none,
              ),
            ),
          ),

          ////

          Text(
            "يرجا ادخال نوع الشئ المفقود ",
            style: optionStyle,
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: "اختار نوع الحاجة",
                fillColor: Colors.red,
                focusColor: Colors.red,
                border: InputBorder.none,
              ),
            ),
          ),
          ////
          Text(
            "يرجا ادخال صورة الشئ المفقود ",
            style: optionStyle,
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child:  _image == null
                        ? Text('No image selected.')
                        : Image.file(_image),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        FloatingActionButton(
                            child: Icon(
                          Icons.add_a_photo_outlined,
                          size: 30,
                        ),
                          tooltip: "add Image",
                          onPressed: getImage,
                        ),

                        FloatingActionButton(
                          child: Icon(
                            Icons.image,
                            size: 30,
                          ),
                          tooltip: "add Image",
                          onPressed: getImageFromGalary,
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
