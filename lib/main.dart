import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/control_view.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      home: Scaffold(
        body: ControlView(),
      ),
    );
  }
}

























// import 'package:firebase_auth/firebase_auth.dart';
// import 'Login.dart';
// import 'firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';








//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     // options: FirebaseOptions(
//     //   apiKey: ,
//     //   appId: ,
//     //   messagingSenderId: ,
//     //   projectId: ,
//     // ),
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MaterialApp(
//     home: MainPage(),
//   ));
// }
// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if(snapshot.hasData) {
//             return const HomePage();
//           }
//           else {
//             return LoginWidget();
//           }
//
//         }
//       ),
//     );
//   }
// }
//
//
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: const Text('hiii'),
//     );
//   }
// }
//
//






// import 'package:flutter/material.dart';
//
// void main() => runApp(const MaterialApp(
//   home: testt(),
// ));
//
//
// class testt extends StatelessWidget {
//   const testt({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('hello there'),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//       ),
//       body: Center(
//         child: IconButton(onPressed: () {print('you clicked me');}, icon: const Icon(Icons.alternate_email),color: Colors.amber,)
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {} ,
//         child: const Text('click'
//         ,style: TextStyle(
//             fontFamily: 'IndieFlower'
//         ),),
//         backgroundColor: Colors.pink,
//       ),
//     );
//   }
// }
