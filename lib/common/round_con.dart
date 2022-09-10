import 'package:flutter/material.dart';

class RoundCon extends StatelessWidget {
  final  double height;
  final Alignment alignment;
  final Color colors;

  const RoundCon({Key? key,

    required this.colors,
    required this.height,
    required this.alignment,
  })
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,

      child: ClipRRect(

        borderRadius: BorderRadius.vertical(bottom: Radius.circular(150)),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          color: colors,

        ),
      ),
    );
  }
}






