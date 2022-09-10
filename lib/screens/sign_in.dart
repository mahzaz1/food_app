import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/common/logo.dart';
import 'package:food_app/screens/password_recovery.dart';
import 'package:food_app/screens/sign_up.dart';

import '../common/form.dart';
import '../common/textStyles.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  bool newValue = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: Column(

          children: [
            LogoName(),
            SizedBox(height: 40,),
            Text("Let’s Sign You In",
                style: TextStyles.headingTextStyle,),

            SizedBox(height: 20,),


            Text("Welcome back, you’ve been missed!",
                style: TextStyles.decTextStyle,),


            SizedBox(height: 30,),

            TextFormMain(

              icon: Icon(Icons.check_circle_outline,
                color: Colors.black12,),
              hint: 'Enter Your Email',
              label: 'Email',),


            SizedBox(height: 10,),


            TextFormMain(

              icon: Icon(Icons.remove_red_eye_outlined,
                color: Colors.black12,),
              hint: 'Enter your password',
              label: 'Password',),



            SizedBox(height: 10,),


            Row(
              children: [
                Switch(
                  activeColor: Color(0xffFFC736),
                  value: newValue,
                  onChanged: (value) {
                    setState(() {
                      newValue = !newValue;
                    });
                  },

                ),

                Text("Save me",
                style: TextStyles.decTextStyle),

                Spacer(),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PasswordRecovery()));
                  },
                  child: Text("Forget Password?",
                  style: TextStyles.mainClrTextStyle),
                ),



              ],
            ),

            SizedBox(height: 20,),


            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Sign In")
            ),

            SizedBox(height: 20,),


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
