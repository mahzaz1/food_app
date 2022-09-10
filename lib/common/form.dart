import 'package:flutter/material.dart';
import 'package:food_app/common/textStyles.dart';

class TextFormMain extends StatelessWidget {

  final Icon icon;

  final String hint , label;

   TextFormMain({Key? key,
    required this.hint,
    required this.label,
    required this.icon

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label ,style: TextStyles.decTextStyle,)),

        SizedBox(height: 10,),


        TextFormField(
          decoration: InputDecoration(
            suffixIcon: icon,
            fillColor: Colors.grey[80],
            filled: true,
            hintText: hint,
            hintStyle: TextStyles.decTextStyle,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffFFC736))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10)
            ),

          ),
        ),
      ],
    );
  }
}


class TextForms extends StatelessWidget {
  const TextForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(
              color: Color(0xffFFC736))),
          fillColor: Colors.grey[80],
          filled: true,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15)
          ),

        ),
      ),
    );
  }
}
