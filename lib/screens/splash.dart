import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/pageview.dart';
import 'package:food_app/screens/screen1.dart';

import '../common/logo.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToScreen1();
  }

  _navigateToScreen1() async{
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/Icon.svg"),
        SizedBox(height: 10,),
        UpLit(),
          ],
        ),
      ),
    );
  }
}
