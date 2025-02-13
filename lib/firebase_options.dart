// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCsAiympPGDGTlnFNE5tgEND8zKdoEt2i8',
    appId: '1:23035564503:web:83aeb5b2196825e582bb92',
    messagingSenderId: '23035564503',
    projectId: 'fruitshub-dcc6e',
    authDomain: 'fruitshub-dcc6e.firebaseapp.com',
    storageBucket: 'fruitshub-dcc6e.appspot.com',
    measurementId: 'G-9N7FE29W2R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUFax45eXKI5Khug76xzXq_Htxa2udygs',
    appId: '1:23035564503:android:23b6f6f40f9ffcd082bb92',
    messagingSenderId: '23035564503',
    projectId: 'fruitshub-dcc6e',
    storageBucket: 'fruitshub-dcc6e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBi09rq3j5OZsU0MfrLne-DFNnEJHBDAmE',
    appId: '1:23035564503:ios:fa22028f89af9d2482bb92',
    messagingSenderId: '23035564503',
    projectId: 'fruitshub-dcc6e',
    storageBucket: 'fruitshub-dcc6e.appspot.com',
    iosBundleId: 'com.example.fruitsShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBi09rq3j5OZsU0MfrLne-DFNnEJHBDAmE',
    appId: '1:23035564503:ios:fa22028f89af9d2482bb92',
    messagingSenderId: '23035564503',
    projectId: 'fruitshub-dcc6e',
    storageBucket: 'fruitshub-dcc6e.appspot.com',
    iosBundleId: 'com.example.fruitsShop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCsAiympPGDGTlnFNE5tgEND8zKdoEt2i8',
    appId: '1:23035564503:web:078558da74894f3682bb92',
    messagingSenderId: '23035564503',
    projectId: 'fruitshub-dcc6e',
    authDomain: 'fruitshub-dcc6e.firebaseapp.com',
    storageBucket: 'fruitshub-dcc6e.appspot.com',
    measurementId: 'G-DYDLFESC7R',
  );
}
