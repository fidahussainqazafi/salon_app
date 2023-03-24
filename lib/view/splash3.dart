import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:salon_app/view/login_page.dart';

import 'get_started.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Get.to(()=>Get_Started());
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

                image: AssetImage('assets/imag/splash3.png'),
                fit: BoxFit.cover
            ),

          ),

        ),
    );
  }
}
