import 'package:flutter/material.dart';
import 'package:myapp2/calender/splashscreen.dart';
import 'package:myapp2/todo_app/home_layout.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
