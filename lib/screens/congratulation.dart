import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/sign_in.dart';

import '../common/logo.dart';
import '../common/round_con.dart';
import '../common/textStyles.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RoundCon(
            alignment: Alignment.topCenter,
            colors: Color(0xffFFC736),
            height: 120,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: Column(

              children: [
                LogoNameW(),
                SizedBox(height: 70,),
                Text("Congratulations!",
                  style: TextStyles.headingTextStyle,),

                SizedBox(height: 20,),


                Text("You successfully rest your password. \nNow you are good to go",
                  style: TextStyles.decTextStyle,
                  textAlign: TextAlign.center,),


                SizedBox(height: 30,),




                SvgPicture.asset("assets/images/congratulation_Icon.svg",height: 270,width: 270,),

                Spacer(),

                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width,50),
                        primary: Color(0xffFFC736),
                        shadowColor: Colors.transparent
                    ),
                    child: Text("Jump Into Log In")
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
