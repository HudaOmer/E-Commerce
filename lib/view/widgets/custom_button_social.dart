import 'package:flutter/material.dart';

import 'custom_text.dart';


class CustomButtonSocial extends StatelessWidget {
  // const CustomButtonSocial({Key? key}) : super(key: key);

  final IconData icon;
  final String text;
  final Function()? onPressed;

  CustomButtonSocial({required this.text,required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon),
              const SizedBox(width: 30.0 ),
              CustomText(
                text: text,
                color: Colors.grey,
                fontSize: 14,
              )
            ],
          ),
        )
    );
  }
}
