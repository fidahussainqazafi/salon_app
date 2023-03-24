import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/view/search_page2.dart';

class Search_page extends StatelessWidget {
  const Search_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>Search_page2());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),


          drawer: Stack(
            children:[
              Drawer(


              backgroundColor: Colors.black,

             // surfaceTintColor: Colors.blue,


            ),


          ]

          ),

          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(

                  image: AssetImage('assets/imag/search_pic.jpeg'),
                  fit: BoxFit.cover
              ),

            ),
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 50,
                    ),
                    Center(
                      child: Container(

                        width: 300,
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
                    SizedBox(
                      height: 190,
                      width: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Robat Jonson",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 13),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            Text("Markal Hums",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 13),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Lifsa Zuli",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 13),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            Text("Washin Tomas",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 13),
                            ),

                          ],


                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160,
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Live style salon",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),

                            SizedBox(
                              width: 30,
                            ),
                            Text("Hoverlead Salon",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Live style salon",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),

                          ],


                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Captown biger city",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),

                                SizedBox(
                                  width:40,
                                ),
                                Text("  London park house",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("  Captown biger city",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),




                              ],


                            ),
                          ],
                        ),


                      ],
                    ),

                    SizedBox(
                      height: 150,
                    ),


                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Hair Cut",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            Text("Style Saving",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Hair Treatment",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            Text(" Body Mas",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 15),
                            ),

                          ],


                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text("   78 Places",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),

                                SizedBox(
                                  width:45,
                                ),
                                Text("  108 Places",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Text("  85 Places",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),

                                SizedBox(
                                  width: 45,
                                ),
                                Text("  85 Places",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 11),
                                ),



                              ],


                            ),
                          ],
                        ),

                      ],
                    ),


                  ]),
            ),
          )

          ),
    );
  }
}
/*

body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(

        image: AssetImage('assets/imag/search_pic.jpeg'),
    fit: BoxFit.cover
    ),

    ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  width: 50,
                ),
                Center(
                  child: Container(

                    width: 300,
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
                SizedBox(
                  height: 190,
                  width: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Robat Jonson",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 13),
                        ),

                        SizedBox(
                          width: 20,
                        ),
                        Text("Markal Hums",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 13),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Lifsa Zuli",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 13),
                        ),

                        SizedBox(
                          width: 20,
                        ),
                        Text("Washin Tomas",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 13),
                        ),

                      ],


                    ),
                  ],
                ),
                SizedBox(
                  height: 160,
                ),

                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Live style salon",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),

                        SizedBox(
                          width: 30,
                        ),
                        Text("Hoverlead Salon",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Live style salon",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),

                      ],


                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Captown biger city",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),

                            SizedBox(
                              width:40,
                            ),
                            Text("  London park house",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text("  Captown biger city",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),




                          ],


                        ),
                      ],
                    ),


                  ],
                ),

                SizedBox(
                  height: 150,
                ),


                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Hair Cut",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),

                        SizedBox(
                          width: 20,
                        ),
                        Text("Style Saving",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Hair Treatment",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),

                        SizedBox(
                          width: 20,
                        ),
                        Text(" Body Mas",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 15),
                        ),

                      ],


                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("   78 Places",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),

                            SizedBox(
                              width:45,
                            ),
                            Text("  108 Places",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Text("  85 Places",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),

                            SizedBox(
                              width: 45,
                            ),
                            Text("  85 Places",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 11),
                            ),



                          ],


                        ),
                  ],
                ),

              ],
            ),


    ]),
          ),
    )

 */
