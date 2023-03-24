import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'about_page.dart';
import 'booknow.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {


  Color _manColor = Colors.white;
  Color _womanColor = Colors.white;
  Color _otherColor = Colors.white;

 // String _selectedGender = '';

String? _selectedGender;
  List<String> _genders = ['Male', 'Female', 'Others'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=>Book_Now());
      },
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                image: AssetImage('assets/imag/appointment_pic.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 365,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Checkbox(
                    value: _manColor == Colors.yellow,
                    onChanged: (newValue) {
                      setState(() {
                        _manColor = newValue! ? Colors.yellow : Colors.white;
                        _womanColor = Colors.white;
                        _otherColor = Colors.white;
                      });
                    },
                    shape: CircleBorder(),
                    activeColor: Colors.transparent,
                    fillColor: MaterialStateProperty.resolveWith(
                            (states) => _manColor),
                  ),

                  Text(
                    "Man",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Checkbox(
                    value: _womanColor == Colors.yellow,
                    onChanged: (newValue) {
                      setState(() {
                        _manColor = Colors.white;
                        _womanColor =
                        newValue! ? Colors.yellow : Colors.white;
                        _otherColor = Colors.white;
                      });
                    },
                    shape: CircleBorder(),
                    activeColor: Colors.transparent,
                    fillColor: MaterialStateProperty.resolveWith(
                            (states) => _womanColor),
                  ),

                  Text(
                    "Woman",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Checkbox(
                    value: _otherColor == Colors.yellow,
                    onChanged: (newValue) {
                      setState(() {
                        _manColor = Colors.white;
                        _womanColor = Colors.white;
                        _otherColor =
                        newValue! ? Colors.yellow : Colors.white;
                      });
                    },
                    shape: CircleBorder(),
                    activeColor: Colors.transparent,
                    fillColor: MaterialStateProperty.resolveWith(
                            (states) => _otherColor),
                  ),

                  Text(
                    "Other",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: 100,

              ),
              Column(
                children: [

                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(''),
                      SizedBox(
                        width: 230,
                      ),
                      Container(

                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),


                        child: DropdownButtonFormField<String>(
    decoration: InputDecoration(
border: InputBorder.none,

    hintText: 'Rahul Hair Cut',

      hintStyle: TextStyle(fontSize: 10,color: Colors.white),


    ),
    value: _selectedGender, // Set the initial value
dropdownColor: Colors.amberAccent,

                            items: _genders
        .map((gender) => DropdownMenuItem(
    value: gender,
    child: Center(child: Text(gender,style: TextStyle(fontSize: 10,color: Colors.white),)),


    ))
        .toList(),
    onChanged: (newValue) {
      setState(() {
        _selectedGender = newValue; // Update the selected gender
      });
    }
    ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 40,
                width: 100,

              ),
              Column(
                children: [

                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(''),
                      SizedBox(
                        width: 230,
                      ),
                      Container(

                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),


                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: 'Select Type',

                              hintStyle: TextStyle(fontSize: 10,color: Colors.white),


                            ),
                            value: _selectedGender, // Set the initial value
                            dropdownColor: Colors.amberAccent,

                            items: _genders
                                .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Center(child: Text(gender,style: TextStyle(fontSize: 10,color: Colors.white),)),


                            ))
                                .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedGender = newValue; // Update the selected gender
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 100,

              ),
              Column(
                children: [

                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(''),
                      SizedBox(
                        width: 230,
                      ),
                      Container(

                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),


                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: 'Select Type',

                              hintStyle: TextStyle(fontSize: 10,color: Colors.white),


                            ),
                            value: _selectedGender, // Set the initial value
                            dropdownColor: Colors.amberAccent,

                            items: _genders
                                .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Center(child: Text(gender,style: TextStyle(fontSize: 10,color: Colors.white),)),


                            ))
                                .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedGender = newValue; // Update the selected gender
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 100,

              ),
              Column(
                children: [

                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(''),
                      SizedBox(
                        width: 230,
                      ),
                      Container(

                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),


                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: 'Select Type',

                              hintStyle: TextStyle(fontSize: 10,color: Colors.white),


                            ),
                            value: _selectedGender, // Set the initial value
                            dropdownColor: Colors.amberAccent,

                            items: _genders
                                .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Center(child: Text(gender,style: TextStyle(fontSize: 10,color: Colors.white),)),


                            ))
                                .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedGender = newValue; // Update the selected gender
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 100,

              ),
              Column(
                children: [

                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(''),
                      SizedBox(
                        width: 230,
                      ),
                      Container(

                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),


                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: 'Select Type',

                              hintStyle: TextStyle(fontSize: 10,color: Colors.white),


                            ),
                            value: _selectedGender, // Set the initial value
                            dropdownColor: Colors.amberAccent,

                            items: _genders
                                .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Center(child: Text(gender,style: TextStyle(fontSize: 10,color: Colors.white),)),


                            ))
                                .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedGender = newValue; // Update the selected gender
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Color _manColor = Colors.white;
  Color _womanColor = Colors.white;
  Color _otherColor = Colors.white;
  String _selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Get.to(() => About_Page());
        },
        child: Scaffold(
        body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage('assets/imag/appointment_pic.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            children: [
            SizedBox(height: 365),
        Row(
          children: [
            SizedBox(width: 20),
            Checkbox(
              value: _manColor == Colors.yellow,
              onChanged: (newValue) {
                setState(() {
                  _manColor = newValue! ? Colors.yellow : Colors.white;
                  _womanColor = Colors.white;
                  _otherColor = Colors.white;
                });
              },
              shape: CircleBorder(),
              activeColor: Colors.transparent,
              fillColor:
              MaterialStateProperty.resolveWith((states) => _manColor),
            ),
            Text(
              "Man",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
            Checkbox(
              value: _womanColor == Colors.yellow,
              onChanged: (newValue) {
                setState(() {
                  _manColor = Colors.white;
                  _womanColor =
                  newValue! ? Colors.yellow : Colors.white;
                  _otherColor = Colors.white;
                });
              },
              shape: CircleBorder(),
              activeColor: Colors.transparent,
              fillColor: MaterialStateProperty.resolveWith(
                      (states) => _womanColor),
            ),
            Text(
              "Woman",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
            Checkbox(
              value: _otherColor == Colors.yellow,
              onChanged: (newValue) {
                setState(() {
                  _manColor = Colors.white;
                  _womanColor = Colors.white;
                  _otherColor =
                  newValue! ? Colors.yellow : Colors.white;
                });
              },
              shape: CircleBorder(),
              activeColor: Colors.transparent,
              fillColor: MaterialStateProperty.resolveWith(
                      (states) => _otherColor),
            ),
            Text(
              "Other",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [

        DropdownButtonFormField<String>(
        decoration: InputDecoration(

        filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),

          //labelText: 'Select Gender',
          //labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(

            borderSide: BorderSide(color: Colors.white),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),

          ),
        ),
        value: _selectedGender,
        onChanged: (String? newValue) {
          setState(() {
            _selectedGender = newValue!;
          });
        },
    items: <String>['Male', 'Female', 'Other']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(
    value,
    style: TextStyle(color: Colors.black),
    ),
    );
    }).toList(),
    ),
      ])
            ]
        ),
        ),
        ),
    );
    }
}

*/