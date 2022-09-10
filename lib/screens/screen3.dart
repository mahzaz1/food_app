import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/screen2.dart';
import 'package:food_app/screens/sign_in.dart';

import '../common/logo.dart';
import '../common/round_con.dart';
import '../common/textStyles.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

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
                  SvgPicture.asset("assets/images/Illustration3.svg",height: 270,width: 270,),

                  SizedBox(height: 40,),
                  Text("Receive the Great Food",
                    style: TextStyles.headingTextStyle),
                  SizedBox(height: 20,),

                  Text("You’ll receive the great food within a hour. And get free delivery credits for every order.",
                    textAlign: TextAlign.center,
                      style: TextStyles.decTextStyle),

                  SizedBox(height: 30,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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

                      SizedBox(width: 15,),
                      Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffFFC736),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ],
                  ),

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
                      child: Text("Let’s Get Started")
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
