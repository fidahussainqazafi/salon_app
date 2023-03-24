import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/login_page.dart';
import 'package:salon_app/view/singup_ok.dart';
class SignUp_Page extends StatelessWidget {
  const SignUp_Page({Key? key}) : super(key: key);

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
                const Text("Create New Account",style: TextStyle(color:
                Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

                Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 50,
                      ),

                      const Text("           Email",style: TextStyle(color: Colors.white,fontSize: 20),),
                      const SizedBox(
                        height: 10,
                      ),

                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // const Text("Enter your email"),

                            Center(

                              child: Container(

                                width: 280,
                                height: 90,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'demo@gmail.com',
                                    prefixIcon:  Icon(Icons.send,color: Colors.white,),
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
                            ),

                          ]
                      )
                    ]
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text("           password",style: TextStyle(color: Colors.white,fontSize: 20),),
                      const SizedBox(
                        height: 5,
                      ),


                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // const Text("Enter your email"),

                          Center(

                            child: Container(

                              width: 280,
                              height: 90,
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Type Password',
                                  prefixIcon: const Icon(Icons.lock,color: Colors.white,),
                                  suffixIcon: IconButton(
                                    color: Colors.white60,
                                    icon: const Icon(Icons.visibility_off_outlined),
                                    onPressed: (){},
                                  ),
                                  suffixStyle: const TextStyle(color: Colors.black),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle: const TextStyle(color: Colors.white),
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),
                          ),

                        ],


                      ),

                    ]

                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      const Text("           Confirm password",style: TextStyle(color: Colors.white,fontSize: 20),),
                      const SizedBox(
                        height: 5,
                      ),


                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // const Text("Enter your email"),

                          Center(

                            child: Container(

                              width: 280,
                              height: 90,
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Type Password',
                                  prefixIcon: const Icon(Icons.lock,color: Colors.white,),
                                  suffixIcon: IconButton(
                                    color: Colors.white60,
                                    icon: const Icon(Icons.visibility_off_outlined),
                                    onPressed: (){},
                                  ),
                                  suffixStyle: const TextStyle(color: Colors.black),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  hintStyle: const TextStyle(color: Colors.white),
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(),
                                      borderSide: BorderSide(color: Colors.black38)
                                  ),

                                ),

                              ),
                            ),
                          ),

                        ],


                      ),
                    ]
                ),
                ElevatedButton(onPressed: (){

                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

                  Get.to(()=>Ok());
                  Get.defaultDialog(


                      barrierDismissible: false,


                      title: "Successfully your \n account done",
                      titleStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      middleText:"Successfully create your account\n now enjoy your apps",
                      middleTextStyle: TextStyle(color: Colors.white70),
                      backgroundColor: Colors.white30,

                      actions: [

                        ElevatedButton(onPressed: (){
                          Get.to(()=>Login_Page());
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffA58430),
                            shape: const RoundedRectangleBorder(
                              borderRadius:  BorderRadius.vertical(),
                            ),
                            minimumSize: const Size(380, 70),


                          ),



                          child: const Text('OK',style:  TextStyle(
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



                  child: const Text('SING UP',style:  TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                    ),

                ),

                Row(

                  children: [
                    const SizedBox(

                      width: 50,
                    ),
                    const Text("Already have account ?",style: TextStyle(color: Colors.white,fontSize: 15),),

                    GestureDetector(
                      onTap: (){},

                      child: const Text("Sign IN",style:
                      TextStyle(color: Color(0xffA58430),fontSize: 15,decoration: TextDecoration.underline),),
                    ),
                  ],

                ),

              ]
          ),
        ),
      ),

    );
  }
}
