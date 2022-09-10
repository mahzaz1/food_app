import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/common/round_con.dart';
import 'package:food_app/screens/screen2.dart';

import '../common/logo.dart';
import '../common/textStyles.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RoundCon(
            alignment: Alignment.topCenter,
            colors: Color(0xffFFC736),
            height: 350,),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoNameW(),
                SizedBox(height: 50,),
                SvgPicture.asset("assets/images/Illustration.svg",height: 270,width: 270,),

                SizedBox(height: 40,),
                Text("Choose a Favourite Food",
                    style: TextStyles.headingTextStyle),
                SizedBox(height: 20,),

                Text("When you oder Eat Steet, we’ll hook you up with exclusive coupon, specials and rewards",textAlign: TextAlign.center,
                    style: TextStyles.decTextStyle),

                SizedBox(height: 30,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 30,

                      decoration: BoxDecoration(
                          color: Color(0xffFFC736),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Color(0xffFFC736),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    SizedBox(width: 15,),

                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Color(0xffFFC736),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ],
                ),

                Spacer(),

            Row(
              children: [
                Text("Skip"),

                Spacer(),

                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(150,50),
                        primary: Color(0xffFFC736),
                        shadowColor: Colors.transparent
                    ),
                    child: Text("Next")
                )
              ],
            )
              ],
            ),
          ),
        ],
      )
    );
  }
}
