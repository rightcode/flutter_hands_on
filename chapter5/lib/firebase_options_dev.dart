// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4RXuEMhanawhe-q33_nVM7c4Q8wHOCgM',
    appId: '1:265370568944:android:e7e9115e25df2f5bd15a35',
    messagingSenderId: '265370568944',
    projectId: 'hands-on-chapter5-dev-615cb',
    storageBucket: 'hands-on-chapter5-dev-615cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD37TGEdOMjGDrQvrZdxp0J_qBq3NYvPNo',
    appId: '1:265370568944:ios:45a1bde28e6e7fbdd15a35',
    messagingSenderId: '265370568944',
    projectId: 'hands-on-chapter5-dev-615cb',
    storageBucket: 'hands-on-chapter5-dev-615cb.appspot.com',
    iosClientId: '265370568944-5otksvko1fpj1th00e8thdrtdp7rjar1.apps.googleusercontent.com',
    iosBundleId: 'com.example.chapter5.dev',
  );
}
