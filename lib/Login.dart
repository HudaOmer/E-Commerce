// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
//
// class LoginWidget extends StatefulWidget {
//   // const LoginWidget({Key? key}) : super(key: key);
//
//   @override
//   _LoginWidgetState createState() => _LoginWidgetState();
// }
//
// class _LoginWidgetState extends State<LoginWidget> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   void dispose(){
//     emailController.dispose();
//     passwordController.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(18),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(height: 40 ),
//           TextField(
//             controller: emailController,
//             cursorColor: Colors.white,
//             textInputAction: TextInputAction.next,
//             decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Email'
//             ),
//           ),
//           const SizedBox(height: 15 ),
//           TextField(
//             controller: passwordController,
//             cursorColor: Colors.white,
//             textInputAction: TextInputAction.done,
//             obscureText: true,
//             decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'password'
//             ),
//           ),
//           const SizedBox(height: 20 ),
//           ElevatedButton.icon(
//             onPressed: signIn,
//             label: const Text('sign in'),
//             icon: const Icon(Icons.lock_open, size: 32,),
//             style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
//           )
//         ],
//       ),
//     );
//   }
//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim()
//     );
//   }
// }
//


















