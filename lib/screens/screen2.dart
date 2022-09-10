import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/screen3.dart';

import '../common/logo.dart';
import '../common/round_con.dart';
import '../common/textStyles.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);


    @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xffFFC736),
        body: Stack(
          children: [
            RotatedBox(
              quarterTurns: 2,
              child: RoundCon(
                height: 400,
                alignment: Alignment.topCenter,
                colors: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogoNameW(),
                  SizedBox(height: 50,),
                  SvgPicture.asset("assets/images/Illustration 2.svg",height: 270,width: 270,),

                  SizedBox(height: 40,),
                  Text("Hot Delivery to Home",
                     style: TextStyles.headingTextStyle),
                  SizedBox(height: 20,),

                  Text("We make food ordering fasr, simple and free-no matter if you order online or cash",
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
                    ],
                  ),

                  Spacer(),

                  Row(
                    children: [
                      Text("Skip"),

                      Spacer(),

                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen3()));
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150,50),
                              primary: Color(0xffFFC736),
                              shadowColor: Colors.transparent
                          ),
                          child: Text("Next")
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
