import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp2/calender/calenderscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CalenderScreen()));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 115),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image/calender1.jpg')),
              ),
            ),
            SizedBox(height: 250,),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(child: Text('Google' ,style: GoogleFonts.aclonica(fontSize: 40, color: Colors.grey), )),
            ),
          ],
        ),
      ) ,
    );
  }
}
