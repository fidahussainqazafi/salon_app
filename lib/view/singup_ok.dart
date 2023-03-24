import 'package:get/get.dart';
import 'package:flutter/material.dart';
class Ok extends StatelessWidget {
  const Ok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(

              image: AssetImage('assets/imag/main_pic.jpeg'),
              fit: BoxFit.cover
          ),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


            ],
          ),
        ),
      ),
    );
  }
}
