import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/verification.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({Key? key}) : super(key: key);

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
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
                  const Text("Forget Password",style: TextStyle(color:
                  Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 30,
                    width: 50,
                  ),
                  const Text("Please enter your email.You will recieve \n a code to create new password via email",
                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 50,
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

                      ElevatedButton(onPressed: (){

                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

                        Get.to(()=>Verification());
                      },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffA58430),
                          shape: const RoundedRectangleBorder(
                            borderRadius:  BorderRadius.vertical(),
                          ),
                          minimumSize: const Size(280, 60),


                        ),



                        child: const Text('SEND CODE',style:  TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                        )
                          ,),

                      ),

                    ],
                  ),

                ]),
          ),
        ));


  }
}
