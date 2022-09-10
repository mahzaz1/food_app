import 'package:flutter/material.dart';
import 'package:food_app/screens/congratulation.dart';

import '../common/form.dart';
import '../common/logo.dart';
import '../common/textStyles.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({Key? key}) : super(key: key);

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

            TextFormMain(

              icon: Icon(Icons.remove_red_eye_rounded,
                color: Colors.black12,),
              hint: 'Enter your new password',
              label: 'New Password',),




            SizedBox(height: 20,),

            TextFormMain(

              icon: Icon(Icons.remove_red_eye_rounded,
                color: Colors.black12,),
              hint: 'Confirm Password',
              label: 'Confirm Password',),

            SizedBox(height: 30,),





            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Congratulation()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Reset Password")
            ),

          ],
        ),
      ),
    );
  }
}
