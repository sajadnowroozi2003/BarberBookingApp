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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAnRubOP5AbwkmMyCzfpe7_VjMSefDUmnI',
    appId: '1:801806806805:web:f8850932a64759cb37431c',
    messagingSenderId: '801806806805',
    projectId: 'barber-booking--app',
    authDomain: 'barber-booking--app.firebaseapp.com',
    storageBucket: 'barber-booking--app.appspot.com',
    measurementId: 'G-Q0MB08TKXR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGjh5aA3xeZa4Dve4A-hOxjPiDRzDI67w',
    appId: '1:801806806805:android:1d59b25d3692ee2937431c',
    messagingSenderId: '801806806805',
    projectId: 'barber-booking--app',
    storageBucket: 'barber-booking--app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAudDhBiCuqvkui9hCghjei_yh8FxR5wC8',
    appId: '1:801806806805:ios:605e031861c825fd37431c',
    messagingSenderId: '801806806805',
    projectId: 'barber-booking--app',
    storageBucket: 'barber-booking--app.appspot.com',
    iosBundleId: 'com.example.barbershope',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAudDhBiCuqvkui9hCghjei_yh8FxR5wC8',
    appId: '1:801806806805:ios:94389e0345ba01fa37431c',
    messagingSenderId: '801806806805',
    projectId: 'barber-booking--app',
    storageBucket: 'barber-booking--app.appspot.com',
    iosBundleId: 'com.example.barbershope.RunnerTests',
  );
}