import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/about_page.dart';

class ChoseBarber extends StatelessWidget {
  const ChoseBarber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>About_Page());
      },
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(

                image: AssetImage('assets/imag/chosebarber.jpeg'),
                fit: BoxFit.cover
            ),

          ),
          child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 60,
                ),
                Center(
                  child: Container(

                    width: 310,
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'salon,services,barber',
                        suffixIcon:  Icon(Icons.search,color: Colors.grey,),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle:  TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.vertical(),
                            borderSide: BorderSide(color: Colors.black38)
                        ),

                      ),

                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}