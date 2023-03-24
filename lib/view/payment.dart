import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/view/call_screen.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
        image: AssetImage('assets/imag/payment_pic.jpeg'),
    fit: BoxFit.cover),
    ),

          child:Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.grey),

                ),

               child: Row(
                 children: [
                   SizedBox(
                     width: 20,
                   ),
                   GestureDetector(
                     onTap: (){},
                     child: Icon(Icons.card_giftcard,color: Colors.white,),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   GestureDetector(
                     onTap: (){},
                     child: Icon(Icons.card_membership,color: Colors.white,),

                   ),
                   SizedBox(
                     width: 20,
                   ),
                   GestureDetector(
                     onTap: (){},
                     child: Icon(Icons.add_card_outlined,color: Colors.white,),

                   ),

                 ],
               ),


              ),
              SizedBox(
                height: 20,

              ),
              Container(height: 80,
                width: 350,

                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Label Text',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                )


              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 60,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Card Name',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  hintText: '',hintStyle: TextStyle(fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,

                  ),


                ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                ),

              ),
              ),

              SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: '* Expiration Date',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        hintText: '',hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,

                          ),


                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey,
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: '*CVV',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        hintText: '',hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,

                          ),


                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

      ],
              ),

            SizedBox(
              height: 10,
            ),
              /*Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.white,
                hoverColor: Colors.red,
              ),*/




              Container(
              height: 80,
              width: 350,

              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Mobile Banking',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
              SizedBox(
                height: 48,
              ),

              ElevatedButton(onPressed: (){

                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

               // Get.to(()=>Payment());
                Get.defaultDialog(

                  title: "Successfully Your\n appoitment done",
                  titleStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  middleText:"Successfully done your Appointment\n we send invoice to your email",
                  middleTextStyle: TextStyle(color: Colors.white70),
                  backgroundColor: Colors.grey,

                    actions: [

                      ElevatedButton(onPressed: (){
                       Get.to(()=>Call_Screen());
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffA58430),
                          shape: const RoundedRectangleBorder(
                            borderRadius:  BorderRadius.vertical(),
                          ),
                          minimumSize: const Size(380, 70),


                        ),



                        child: const Text('Ok',style:  TextStyle(
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
                  minimumSize: const Size(230, 50),


                ),



                child: const Text('PAYMENT',style:  TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                ),
                  ),

              ),

            ],
          )
    )
    );
  }
}
