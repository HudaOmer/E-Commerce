// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_qW6Cnz0kPIZsNr2qDogT2gXk1bWewF8',
    appId: '1:295136004932:android:60da3fa8b65c91d64be511',
    messagingSenderId: '295136004932',
    projectId: 'test-dab2e',
    storageBucket: 'test-dab2e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClc5Fj26w6MRAu_djOT-vyEK0L6P9_inE',
    appId: '1:295136004932:ios:b0d3576e177f5ba34be511',
    messagingSenderId: '295136004932',
    projectId: 'test-dab2e',
    storageBucket: 'test-dab2e.appspot.com',
    iosClientId: '295136004932-8h4ts3j3prandst3mdr94p73gjl7cqvh.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );
}
