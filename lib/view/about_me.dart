import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/appoinment_screen.dart';

import 'about_page.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>Appointment());

      },
      child: Scaffold(
      body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(

            image: AssetImage('assets/imag/about me.jpeg'),
            fit: BoxFit.cover
        ),

      ),

    ),
      ),
    );

  }
}
