import 'package:flutter/material.dart';
import 'package:food_app/screens/screen1.dart';
import 'package:food_app/screens/screen2.dart';

class PagesView extends StatelessWidget {
   PagesView({Key? key}) : super(key: key);

  final controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          Screen1(),
          Screen2(),
        ],
      ),
    );
  }
}
