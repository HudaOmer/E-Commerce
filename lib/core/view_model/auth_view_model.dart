import 'package:flutter/material.dart';

// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/model/user_model.dart';

import '../../view/home_view.dart';
import '../services/firestore_user.dart';
// import 'package:firebase_core/firebase_core.dart';

class AuthViewModel extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // FacebookLogin _facebookLogin = FacebookLogin();
  late String email, password, name;

  final Rx<User?> _user = Rxn<User?>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    //TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  // @override
  // void onReady(){
  //   //TODO:
  //   super.onReady();
  // }
  // @override
  // void onClose(){
  //   //TODO:
  //   super.onClose();
  // }

  void googleSignInMethd() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken);

    await _auth
        .signInWithCredential(credential)
        .then((user){saveUser(user);
        Get.offAll(HomeView());
        });

    // void facebookSignInMethod() async {
    //   FacebookLoginResult result = await _facebookLogin.logIn(['email']);
    //   final accessToken = result.accessToken.token;
    //   if(result.status == FacebookLoginStatus.loggedIn){
    //     final faceCredential = FacebookAuthProvider.credential(accessToken);
    //     await _auth.signInWithCredential(faceCredential);
    //   }
    // }
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      Get.offAll(HomeView());
    } catch (e) {
      print(e.toString());
      Get.snackbar('Error Login Account', e.toString(),
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((user) async {
        saveUser(user);
      });

      Get.offAll(HomeView());
    } catch (e) {
      print(e.toString());
      Get.snackbar('Error Login Account', e.toString(),
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(
        // UserModel userModel =
        UserModel(
            userId: user.user?.uid,
            email: user.user?.email,
            name: name == null ? user.user?.displayName : name,
            pic: ''));
  }
}
