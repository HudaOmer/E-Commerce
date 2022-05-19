import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);

  final String text;
  // final Alignment alignment;
  final Function()? onPressed;


  CustomButton({ this.text = '', this.onPressed ,});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      child: CustomText(text: text,alignment: Alignment.center,color: Colors.white,),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        padding: const EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
