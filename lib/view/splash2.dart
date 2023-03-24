import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/splash3.dart';

import 'login_page.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.to(()=>Splash3());
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

                image: AssetImage('assets/imag/splash2.png'),
                fit: BoxFit.cover
            ),

          ),

        )
    );
  }
}
