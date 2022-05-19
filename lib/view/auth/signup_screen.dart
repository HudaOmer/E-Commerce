import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/login_screen.dart';
import 'package:untitled/view/widgets/custom_text_form.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import 'package:untitled/core/view_model/auth_view_model.dart';
import '../../core/view_model/auth_view_model.dart';

class SignUp extends GetWidget<AuthViewModel> {
  SignUp({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginScreen());
            },
            child: const Icon(Icons.arrow_back, color: Colors.black,)),
      ),
      body: ListView(
        children: [Padding(
          padding: const EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomText(text: "Sign Up!", fontSize: 30),
                const SizedBox(height: 5.0),
                CustomText(text: 'Sign in to continue',
                    fontSize: 12,
                    color: Colors.grey),
                const SizedBox(height: 40.0),
                CustomTextFormField(hint: "SomeOne",
                  text: "Name",
                  onSave: (value) {},
                  validator: (value) {},),
                const SizedBox(height: 40.0,),
                CustomTextFormField(
                  hint: "SomeOne@gmail.com", text: "Email", onSave: (value) {
                  controller.email = value;
                }, validator: (value) {if (value == null) print('Error');},),
                const SizedBox(height: 40.0,),
                CustomTextFormField(
                  hint: "********", text: "Password", onSave: (value) {
                  controller.password = value;
                }, validator: (value) {if (value == null) print('Error');},),
                const SizedBox(height: 20.0,),
                CustomButton(text: 'Sign Up', onPressed: () {
                  _formKey.currentState?.save();
                  controller.createAccountWithEmailAndPassword();
                },),

              ],
            ),
          ),
        ),]
      ),
    );
  }
}
