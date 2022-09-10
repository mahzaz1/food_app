import 'package:flutter/material.dart';

import 'package:food_app/screens/splash.dart';

void main()async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Mulish"
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
