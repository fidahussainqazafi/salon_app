import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 're-set_password.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Column(
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  const Text("Enter the 4- digit code\n  sent to 0123456789",style: TextStyle(color:
                  Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                  const SizedBox(
                    height: 50,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      // const Text("Enter your email"),

                      Center(

                        child: Row(


                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Container(

                              width: 60,
                              height: 60,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '2',
                                  //prefixIcon:  Icon(Icons.send,color: Colors.white,),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle:  TextStyle(color: Colors.white,fontSize: 30,
                                  fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(

                              width: 60,
                              height: 60,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  // hintText: 'demo@gmail.com',
                                  //prefixIcon:  Icon(Icons.send,color: Colors.white,),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle:  TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(

                              width: 60,
                              height: 60,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  // hintText: 'demo@gmail.com',
                                  //prefixIcon:  Icon(Icons.send,color: Colors.white,),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle:  TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),

                            const SizedBox(
                              width: 20,
                            ),

                            Container(

                              width: 60,
                              height: 60,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  // hintText: 'demo@gmail.com',
                                  //prefixIcon:  Icon(Icons.send,color: Colors.white,),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle:  TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Row(

                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          const Text("Resend",style: TextStyle(color: Color(0xffA58430),fontSize: 15),),
                          SizedBox(
                            width: 5,
                          ),

                          const Text("code in 00:15s",style:
                          TextStyle(color: Colors.white,fontSize: 15),),
                        ],

                      ),
                      SizedBox(
                        height: 50,
                      ),

                    ],

                  ),
                  ElevatedButton(onPressed: (){

                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

                     Get.to(()=>Reset_password());
                  },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffA58430),
                      shape: const RoundedRectangleBorder(
                        borderRadius:  BorderRadius.vertical(),
                      ),
                      minimumSize: const Size(280, 60),


                    ),



                    child: const Text('Verification',style:  TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                    )
                      ,),

                  ),

                ]
            ),
          ),
        ));
  }
}
