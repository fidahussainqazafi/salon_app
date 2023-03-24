import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/view/chosebarber.dart';
class Search_page2 extends StatelessWidget {
  const Search_page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>ChoseBarber());
      },
      child: Scaffold(
          body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(

          image: AssetImage('assets/imag/search2.jpeg'),
      fit: BoxFit.cover
      ),

      ),
            child: Column(
              children: [
              SizedBox(
              height: 160,
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
