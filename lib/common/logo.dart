import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpLit extends StatelessWidget {
  const UpLit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Up",
              style: TextStyle(
                color: Colors.black,
                  fontSize: 28,
                fontWeight: FontWeight.bold

              )
            ),
            TextSpan(
              text: "Lit",
              style: TextStyle(
                color: Color(0xffFFC736),
                fontSize: 28,
                  fontWeight: FontWeight.bold

              )
            )
          ]
    ));
  }
}

class UpLitW extends StatelessWidget {
  const UpLitW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  text: "Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold

                  )
              ),
              TextSpan(
                  text: "Lit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold

                  )
              )
            ]
        ));
  }
}

class LogoNameW extends StatelessWidget {
  const LogoNameW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/Icon.svg",height: 50,width: 50,),
        SizedBox(width: 10),
        UpLitW(),
      ],
    );
  }
}


class LogoName extends StatelessWidget {
  const LogoName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/Icon.svg",height: 50,width: 50,),
        SizedBox(width: 10),
        UpLit(),
      ],
    );
  }
}

