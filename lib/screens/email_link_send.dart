import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/email_template.dart';

import '../common/logo.dart';
import '../common/textStyles.dart';

class EmailLinkSend extends StatelessWidget {
  const EmailLinkSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: Column(

          children: [
            LogoName(),
            SizedBox(height: 60,),
            CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xffFFC736),
                child: Image.asset("assets/images/Group 37.png",)),

            SizedBox(height: 20,),


            Text("Email Sent Successfully",
              style: TextStyles.headingTextStyle,),

            SizedBox(height: 30,),


            Text("A verification link has been sent to your email. Please open the link to verify your identity.",
              style: TextStyles.decTextStyle,),

            Spacer(),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmailTemplate()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Next")
            ),



          ],
        ),
      ),
    );
  }
}
