import 'package:flutter/material.dart';
import 'package:food_app/screens/password_reset.dart';

import '../common/logo.dart';
import '../common/round_con.dart';
import '../common/textStyles.dart';
import 'otp_authentication.dart';

class EmailTemplate extends StatelessWidget {
  const EmailTemplate({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: Column(

              children: [
                LogoNameW(),
                SizedBox(height: 60,),
                Text("Welcome",
                  style: TextStyles.headingTextStyle,),

                SizedBox(height: 30,),


                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyles.decTextStyle,),


                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTP()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width,50),
                        primary: Color(0xffFFC736),
                        shadowColor: Colors.transparent
                    ),
                    child: Text("Confirm Account")
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
