import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/view/splash2.dart';

import 'login_page.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.to(()=>Splash2());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(

                image: AssetImage('assets/imag/splash1.png'),
                fit: BoxFit.cover
            ),

          ),

        )


    );
  }
}
