

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
    apiKey: 'AIzaSyCLvxHsuMRt2oqlLHa1BHFI-llHUgYOrso',
    appId: '1:500519806989:web:d70fdab4f2cb35bdae0d44',
    messagingSenderId: '500519806989',
    projectId: 'note-project-id27',
    authDomain: 'note-project-id27.firebaseapp.com',
    databaseURL: 'https://note-project-id27-default-rtdb.firebaseio.com',
    storageBucket: 'note-project-id27.appspot.com',
    measurementId: 'G-0YJTCKS2R0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSr-OApEoVMkxz4lgwjHmSo2myQ02Y7Ns',
    appId: '1:500519806989:android:ca0f557a31a2065dae0d44',
    messagingSenderId: '500519806989',
    projectId: 'note-project-id27',
    databaseURL: 'https://note-project-id27-default-rtdb.firebaseio.com',
    storageBucket: 'note-project-id27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDT7HKyhishkxV7YPt6egh3aTCvEkVPj80',
    appId: '1:500519806989:ios:68f9628ee49a73bdae0d44',
    messagingSenderId: '500519806989',
    projectId: 'note-project-id27',
    databaseURL: 'https://note-project-id27-default-rtdb.firebaseio.com',
    storageBucket: 'note-project-id27.appspot.com',
    iosBundleId: 'com.pdp.messageApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDT7HKyhishkxV7YPt6egh3aTCvEkVPj80',
    appId: '1:500519806989:ios:64510a09ac4a1350ae0d44',
    messagingSenderId: '500519806989',
    projectId: 'note-project-id27',
    databaseURL: 'https://note-project-id27-default-rtdb.firebaseio.com',
    storageBucket: 'note-project-id27.appspot.com',
    iosBundleId: 'com.pdp.messageApp.RunnerTests',
  );
}
