import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/login_page.dart';
import 'package:salon_app/view/singup_page.dart';

class Get_Started extends StatelessWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(

                image: AssetImage('assets/imag/started.png'),
                fit: BoxFit.cover
            ),

          ),
 child: Column(
   children: [
     SizedBox(
       height: 570,
     ),
     Center(
       child: ElevatedButton(onPressed: (){

         //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

         Get.to(()=>SignUp_Page());
       },

         style: ElevatedButton.styleFrom(
           backgroundColor: const Color(0xffA58430),
           shape: const RoundedRectangleBorder(
             borderRadius:  BorderRadius.vertical(),
           ),
           minimumSize: const Size(200, 50),


         ),



         child: const Text('GET STARTED',style:  TextStyle(
             fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
         )
           ,),

       ),
     ),
   ],
 ),

        ),


    );
  }
}
