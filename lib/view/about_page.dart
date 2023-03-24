import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/view/about_me.dart';

class About_Page extends StatefulWidget {
  const About_Page({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<About_Page> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>AboutMe());
      },
      child: Scaffold(


        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage('assets/imag/about_pic.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 480,
                ),
                Text('About_Page'),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical()),
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(),

                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.vertical(),
                        color: Colors.amberAccent,
                      ),
                      controller: _tabController,
                      labelPadding: EdgeInsets.symmetric(),
                      tabs: [
                        Tab(
                          child: Text(
                            'About',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Service',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),

                        ),
                        Tab(
                          child: Text(
                            'Gallery',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Review',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),

                          ),

                        ),

                      ],

                    ),
                  ),
                ),




          ]
            ),
        ),


      ),
    ));

  }
}

