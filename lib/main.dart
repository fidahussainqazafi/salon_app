import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/home_screen.dart';
import 'package:salon_app/view/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home:Home_screen(),
      //Login_Page(),

    );
  }
}


/*


 Column(
  children: [
    SizedBox(
      height: 100,

    ),


   Text("Email",style: TextStyle(color: Colors.black,fontSize: 20),),
    SizedBox(
      height: 10,
    ),

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       // const Text("Enter your email"),

        Center(

          child: Container(

            width: 300,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'demo@gmail.com',
                prefixIcon: const Icon(Icons.send,color: Colors.white,),
                filled: true,
                fillColor: Colors.black38,
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                    borderSide: BorderSide(color: Colors.black38)
                ),

              ),

            ),
          ),
        )

      ],
    ),



  ],
),

    ),
    );
  }
}

 */