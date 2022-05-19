import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/view_model/auth_view_model.dart';
import 'package:untitled/view/auth/signup_screen.dart';
import 'package:untitled/view/widgets/custom_button_social.dart';
import 'package:untitled/view/widgets/custom_text_form.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../../core/view_model/auth_view_model.dart';


class LoginScreen extends GetWidget<AuthViewModel> {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Welcome,", fontSize: 30),
                    GestureDetector(
                        onTap: () {
                          Get.to( SignUp());
                        },
                        child: CustomText(
                            text: "Sign Up", fontSize: 15, color: primaryColor))
                  ],
                ),
                const SizedBox(height: 5.0),
                CustomText(
                    text: 'Sign in to continue',
                    fontSize: 12,
                    color: Colors.grey),
                const SizedBox(height: 40.0),
                // TextFormField(
                //   decoration: const InputDecoration(hintText: "SomeOne@gmail.com",
                //       label: Text("Email"),
                //       labelStyle: TextStyle(color: primaryColor)),
                // ),
                CustomTextFormField(
                  hint: "SomeOne@gmail.com",
                  text: "Email",
                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) print('Error');
                  },
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CustomTextFormField(
                  hint: "********",
                  text: "Password",
                  onSave: (value) {
                    controller.password = value;
                  },
                  validator: (value) {
                    if (value == null) print('Error');
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomText(
                  text: 'Forget Password?',
                  fontSize: 12,
                  alignment: Alignment.topRight,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomText(
                    text: '-OR-',
                    alignment: Alignment.center,
                    color: Colors.grey),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonSocial(
                  text: 'Sign in with Google',
                  icon: Icons.email,
                  onPressed: () {
                    controller.googleSignInMethd();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonSocial(
                  text: 'Sign in with Facebook',
                  icon: Icons.facebook,
                  onPressed: () {},
                ),

              ],
            ),
          ),
        ),]
      ),
    );
  }
}
