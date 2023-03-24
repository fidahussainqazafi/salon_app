import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/login_page.dart';
import 'package:salon_app/view/splash1.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.to(()=>Splash1());
    });
  }


  Widget build(BuildContext context) {

    return Scaffold(
        body:Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(

                image: AssetImage('assets/imag/home_screen.png'),
                fit: BoxFit.cover
            ),

          ),

    )
    );
  }
}
