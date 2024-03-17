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
    apiKey: 'AIzaSyDx0RSdzeZLEgCeGup_Nvm1wWPnP_aTo-M',
    appId: '1:869639295617:web:2a30f150fa1a7d05aef380',
    messagingSenderId: '869639295617',
    projectId: 'yolcunun-defteri-10175',
    authDomain: 'yolcunun-defteri-10175.firebaseapp.com',
    storageBucket: 'yolcunun-defteri-10175.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDzMxvRwmVyc1ZcuwaD0zhUtJFlHhjyA3A',
    appId: '1:869639295617:android:aa737aae8752de0baef380',
    messagingSenderId: '869639295617',
    projectId: 'yolcunun-defteri-10175',
    storageBucket: 'yolcunun-defteri-10175.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOJxSzE2Xr010R-Aq1oEEYdNM925alTUE',
    appId: '1:869639295617:ios:0f1af15b781aa9ffaef380',
    messagingSenderId: '869639295617',
    projectId: 'yolcunun-defteri-10175',
    storageBucket: 'yolcunun-defteri-10175.appspot.com',
    iosBundleId: 'com.example.yolcununDefteri',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOJxSzE2Xr010R-Aq1oEEYdNM925alTUE',
    appId: '1:869639295617:ios:cd9f9ba7dfba08edaef380',
    messagingSenderId: '869639295617',
    projectId: 'yolcunun-defteri-10175',
    storageBucket: 'yolcunun-defteri-10175.appspot.com',
    iosBundleId: 'com.example.yolcununDefteri.RunnerTests',
  );
}
