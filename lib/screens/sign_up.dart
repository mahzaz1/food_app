import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/sign_in.dart';
import 'package:food_app/screens/term_conditions.dart';
import '../common/form.dart';
import '../common/logo.dart';
import '../common/textStyles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  @override

  bool newValue = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: Column(

          children: [
            LogoName(),
            SizedBox(height: 20,),
            Text("Getting Started",
              style: TextStyles.headingTextStyle,),



            Text("Create an account to continue!",
              style: TextStyles.decTextStyle,),


            SizedBox(height: 20,),

            TextFormMain(
              icon: Icon(Icons.check_circle_outline,
                color: Colors.black12,),
              hint: 'Enter your phone number',
              label: 'Email',),



            TextFormMain(

              icon: Icon(Icons.phone,
                color: Colors.black12,),
              hint: 'Enter Your Email',
              label: 'Phone',),

            SizedBox(height: 10,),


            TextFormMain(

              icon: Icon(Icons.remove_red_eye_rounded,
                color: Colors.black12,),
              hint: 'Enter your password',
              label: 'Password',),




            TextFormMain(

              icon: Icon(Icons.remove_red_eye_rounded,
                color: Colors.black12,),
              hint: 'Confirm Password',
              label: 'Confirm Password',),





            Row(
              children: [
              Checkbox(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                activeColor: Colors.black,
                  value: newValue,
                  onChanged: (value){
                    setState(() {
                      newValue = !newValue;
                    });
                  }),

                SizedBox(width: 30,),

                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "I accept the ",
                            style: TextStyles.decTextStyle
                        ),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermCondition()));
                            },
                            text: "Terms and Conditions",
                            style: TextStyles.mainClrTextStyle),

                      ]
                  ),
                ),

              ],
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    primary: Color(0xffFFC736),
                    shadowColor: Colors.transparent
                ),
                child: Text("Sign Up")
            ),


            SizedBox(height: 15,),

            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyles.decTextStyle
                    ),
                    TextSpan(
                        recognizer: new TapGestureRecognizer()..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                        },
                        text: "Sign In",
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
