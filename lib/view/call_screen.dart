import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Call_Screen extends StatefulWidget {
  const Call_Screen({Key? key}) : super(key: key);

  @override
  State<Call_Screen> createState() => _Call_ScreenState();
}

class _Call_ScreenState extends State<Call_Screen> {
  File? _image;

  Future<void> _pickImage() async {
    final imageFile =
    await ImagePicker().getImage(source: ImageSource.gallery);

    if (imageFile != null) {
      setState(() {
        _image = File(imageFile.path);
      });
    } else {
      Get.snackbar('Error', 'No image selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height:50,
                  ),
                  if (_image != null)
                    ClipOval(
                      child: ElevatedButton(
                        onPressed: _pickImage,

                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          padding: EdgeInsets.all(10),
                        ),

                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: FileImage(_image!),
                        ),
                      ),
                    ),
        SizedBox(
          height: 10,
        ),

        Center(

          child: Container(

            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 150),
            child: TextFormField(
              style: TextStyle(color: Colors.white),

              decoration: InputDecoration(
                hintText: 'Your Name',
                hintStyle: TextStyle(color: Colors.white),
border: InputBorder.none,
              ),


            )
          ),
        ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    width: 350,
                    color: Colors.grey,

                    child: Column(
                      children: [
                        Text(''),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           SizedBox(
                             height: 20,
                           ),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),

                              child: Icon(

                                Icons.music_off_sharp,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),
                              child: Icon(
                                Icons.data_thresholding,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),
                              child: Icon(
                                Icons.bluetooth,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),
                              child: Icon(
                                Icons.speaker_phone,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),
                              child: Icon(
                                Icons.record_voice_over_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.all(20),
                              ),
                              child: Icon(
                                Icons.keyboard,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),


                  ),
        SizedBox(
          height: 60,
           ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.yellow,
                        padding: EdgeInsets.all(20),
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 30,
                      ),
                  ),



                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
