import 'package:flutter/material.dart';
import 'package:food_app/screens/password_reset.dart';

import '../common/form.dart';
import '../common/logo.dart';
import '../common/textStyles.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
            Text("Reset Your Password",
              style: TextStyles.headingTextStyle,),

            SizedBox(height: 20,),


            Text("At least 9 characters, with uppercase and lowercase letters",
              style: TextStyles.decTextStyle,
              textAlign: TextAlign.center,),


            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextForms(),
                TextForms(),
                TextForms(),
                TextForms(),
              ],
            ),

            SizedBox(height: 30,),


            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Didn't receive code?  ",
                        style: TextStyles.decTextStyle
                    ),
                    TextSpan(

                        text: "Resend",
                        style: TextStyles.mainClrTextStyle),

                  ]
              ),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PasswordReset()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Confirm")
            ),

          ],
        ),
      ),
    );
  }
}
