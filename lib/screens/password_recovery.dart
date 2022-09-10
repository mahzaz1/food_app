import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/email_link_send.dart';
import 'package:food_app/screens/password_reset.dart';
import 'package:food_app/screens/sign_up.dart';

import '../common/form.dart';
import '../common/logo.dart';
import '../common/textStyles.dart';
import 'otp_authentication.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(

          children: [
            LogoName(),
            SizedBox(height: 40,),
            Text("Password Recovery",
              style: TextStyles.headingTextStyle,),

            SizedBox(height: 20,),


            Text("Please enter your email address to recover your password",
              style: TextStyles.decTextStyle,
            textAlign: TextAlign.center,),


            SizedBox(height: 30,),

            TextFormMain(

              icon: Icon(Icons.check_circle_outline,
                color: Colors.black12,),
              hint: 'Enter Your Email',
              label: 'Email',),



            SizedBox(height: 40,),



            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmailLinkSend()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Send Email")
            ),

            SizedBox(height: 30,),


            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyles.decTextStyle
                    ),
                    TextSpan(
                        recognizer: new TapGestureRecognizer()..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                        },
                        text: "Sign Up",
                        style: TextStyles.mainClrTextStyle),

                  ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
