import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';

const header1 = TextStyle(color: Colors.black, fontSize: 30);
const header4 = TextStyle(
  color: primaryColor,
  fontSize: 18,
);

class CustomText extends StatelessWidget {
  // const CustomText({Key? key}) : super(key: key);
  final String text;
  final double fontSize;
  final Alignment alignment;
  final Color color;

  CustomText({this.text = '', this.fontSize = 16, this.color = Colors.black, this.alignment = Alignment.topLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        ));
  }
}
