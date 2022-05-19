import 'package:flutter/material.dart';
import 'package:untitled/view/widgets/custom_text.dart';
import '../../constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  // const CustomTextFormField({Key? key}) : super(key: key);

  final String text;
  final String hint;
  final bool obscureText;
  final Null Function(dynamic value) onSave;
  final Null Function(dynamic value) validator;
  // final Color color;


   const CustomTextFormField(
       {this.text = '',
        this.hint = '',
        this.obscureText = false, required this.onSave ,
     // this.color = Colors.blueGrey,
     required this.validator
   });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14,
          color: primaryColor ,
        ),
        TextFormField(
          onSaved: onSave,
          // validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hint, hintStyle: const TextStyle(color: Colors.grey, fontSize: 14), fillColor: Colors.white),
        ),

      ],
    );
  }
}
