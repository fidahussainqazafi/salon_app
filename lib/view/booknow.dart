import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salon_app/view/payment.dart';

class Book_Now extends StatefulWidget {
  const Book_Now({Key? key}) : super(key: key);

  @override
  _Book_NowState createState() => _Book_NowState();
}

class _Book_NowState extends State<Book_Now> {
  bool _bookNowButtonPressed = false;
  bool _notNowButtonPressed = false;
  bool _button1Pressed = false;
  bool _button2Pressed = false;
  bool _button3Pressed = false;
 // bool _button4Pressed = false;
  DateTime selectedDate = DateTime.now();
  TextEditingController _textController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _textController.text = '${selectedDate.toLocal()}'.split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    height: double.maxFinite,
    width: double.maxFinite,
    decoration: const BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
    image: AssetImage('assets/imag/booknow_pic.jpeg'),
    fit: BoxFit.cover),
    ),
    child: Column(
    children: [
    SizedBox(
    height: 370,
    ),
    Container(
    width: 330,
    child: TextFormField(
    controller: _textController,
    readOnly: true,
    onTap: () => _selectDate(context),
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.grey,
    suffixIcon: Icon(
    Icons.calendar_today,
    color: Colors.grey[600],
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    contentPadding: EdgeInsets.all(15),
    ),
    ),
    ),
    SizedBox(
    height: 55,
    ),





         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
            onPressed: () {
    setState(() {
    _bookNowButtonPressed = true;
    _notNowButtonPressed = false;
    _button1Pressed = false;
    _button2Pressed = false;
    _button3Pressed = false;
    });
    },
        child: Text(
          '8:00 am',
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: _bookNowButtonPressed ? Colors.yellowAccent : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
        ),
    ),
          SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bookNowButtonPressed = false;
                _notNowButtonPressed = true;
                _button1Pressed = false;
                _button2Pressed = false;
                _button3Pressed = false;
              });
            },
            child: Text(
              '9:00 am',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor:
              _notNowButtonPressed ? Colors.yellowAccent : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _bookNowButtonPressed = false;
                _notNowButtonPressed = false;
                _button1Pressed = true;
                _button2Pressed = false;
                _button3Pressed = false;
              });
            },
            child: Text(
              '10:00 am',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: _button1Pressed ? Colors.yellowAccent : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _bookNowButtonPressed = false;
                _notNowButtonPressed = false;
                _button1Pressed = false;
                _button2Pressed = true;
                _button3Pressed = false;
              });
            },
            child: Text(
              '11:00 am',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: _button2Pressed ? Colors.yellowAccent : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _bookNowButtonPressed = false;
                  _notNowButtonPressed = false;
                  _button1Pressed = false;
                  _button2Pressed = false;
                  _button3Pressed = true;
                });
              },
              child: Text(
                '12:00 am',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            style: ElevatedButton.styleFrom(
              primary: _button3Pressed ? Colors.yellowAccent : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
            ),
          ),

              SizedBox(
                width: 10,
              ),



                  ]
        ),
      SizedBox(
        height: 95,
      ),

      ElevatedButton(onPressed: (){

        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassword()));

        Get.to(()=>Payment());
      },

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffA58430),
          shape: const RoundedRectangleBorder(
            borderRadius:  BorderRadius.vertical(),
          ),
          minimumSize: const Size(230, 50),


        ),



        child: const Text('BOOK NOW',style:  TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
        )
          ,),

      ),
    ]
    )
    )
    );

  }
}
/*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
          onPressed: () {
    setState(() {
    _bookNowButtonPressed = true;
    _notNowButtonPressed = false;
    _button1Pressed = false;
    _button2Pressed = false;
    _button3Pressed = false;
    });
    },
      child: Text(
        'Book Now',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: _bookNowButtonPressed ? Colors.red : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 15,
        ),
      ),
    ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bookNowButtonPressed = false;
              _notNowButtonPressed = true;
              _button1Pressed = false;
              _button2Pressed = false;
              _button3Pressed = false;
            });
          },
          child: Text(
            'Not Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor:
            _notNowButtonPressed ? Colors.yellow : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
            side: BorderSide(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _bookNowButtonPressed = false;
              _notNowButtonPressed = false;
              _button1Pressed = true;
              _button2Pressed = false;
              _button3Pressed = false;
            });
          },
          child: Text(
            'Button 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: _button1Pressed ? Colors.red : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _bookNowButtonPressed = false;
              _notNowButtonPressed = false;
              _button1Pressed = false;
              _button2Pressed = true;
              _button3Pressed = false;
            });
          },
          child: Text(
            'Button 2',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: _button2Pressed ? Colors.red : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _bookNowButtonPressed = false;
                _notNowButtonPressed = false;
                _button1Pressed = false;
                _button2Pressed = false;
                _button3Pressed = true;
              });
            },
            child: Text(
              'Button 3',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: _button3Pressed ? Colors.red : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
        ),

            ]
    ) */