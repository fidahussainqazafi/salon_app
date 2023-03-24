import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Done extends StatelessWidget {
  const Done({Key? key}) : super(key: key);

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


/*

ElevatedButton(onPressed: (){

            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

          //  Get.defaultDialog(

                Get.defaultDialog(

                  //content: Icon(Icons.check),
                    barrierDismissible: false,


                      title: "Code has been sent to\nreset a new password",
                    middleText:"Successfully create your account\n now enjoy your apps",
                  backgroundColor: Colors.grey,
                  actions: [

                    ElevatedButton(onPressed: (){

                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffA58430),
                        shape: const RoundedRectangleBorder(
                          borderRadius:  BorderRadius.vertical(),
                        ),
                        minimumSize: const Size(350, 70),


                      ),



                      child: const Text('Done',style:  TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                      )
                        ,),

                    ),
                  ]

            );
          },

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffA58430),
              shape: const RoundedRectangleBorder(
                borderRadius:  BorderRadius.vertical(),
              ),
              minimumSize: const Size(280, 60),


            ),



            child: const Text('Ok',style:  TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
            )
              ,),

          ),

 */




/*
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(

          image: AssetImage('assets/imag/login2.jpeg'),
      fit: BoxFit.cover
      ),


          ),





 */