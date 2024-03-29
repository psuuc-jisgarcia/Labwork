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
    apiKey: 'AIzaSyD8zi_Z7vdEwjCN2pBu1qC8DpHcNgCBlyQ',
    appId: '1:888283104306:web:3975e0c51865d9b8e9e82b',
    messagingSenderId: '888283104306',
    projectId: 'garciajudge-labwork',
    authDomain: 'garciajudge-labwork.firebaseapp.com',
    storageBucket: 'garciajudge-labwork.appspot.com',
    measurementId: 'G-76S2CRNHSY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjUgx3WjT1QHKBauRUIHPoJgmbmYGhgi8',
    appId: '1:888283104306:android:f075c440d1cfb77ee9e82b',
    messagingSenderId: '888283104306',
    projectId: 'garciajudge-labwork',
    storageBucket: 'garciajudge-labwork.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAt3m5gHpXFBXahKuciUmKVsj8yFXUyNss',
    appId: '1:888283104306:ios:c10c7f57bb1c4d84e9e82b',
    messagingSenderId: '888283104306',
    projectId: 'garciajudge-labwork',
    storageBucket: 'garciajudge-labwork.appspot.com',
    iosBundleId: 'com.example.labwork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAt3m5gHpXFBXahKuciUmKVsj8yFXUyNss',
    appId: '1:888283104306:ios:f6017a972bd986b7e9e82b',
    messagingSenderId: '888283104306',
    projectId: 'garciajudge-labwork',
    storageBucket: 'garciajudge-labwork.appspot.com',
    iosBundleId: 'com.example.labwork.RunnerTests',
  );
}
