import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:chapter5/firebase_options.dart' as prod;
import 'package:chapter5/firebase_options_dev.dart' as dev;
import 'package:chapter5/firebase_options_stg.dart' as stg;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Flavor に応じた FirebaseOptions を準備する
  const flavor = String.fromEnvironment('FLAVOR');
  late FirebaseOptions firebaseOptions;
  switch (flavor) {
    case 'dev':
      firebaseOptions = dev.DefaultFirebaseOptions.currentPlatform;
      break;
    case 'stg':
      firebaseOptions = stg.DefaultFirebaseOptions.currentPlatform;
      break;
    case 'prod':
      firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
      break;
    default:
      firebaseOptions = dev.DefaultFirebaseOptions.currentPlatform;
  }

  // Firebase の初期化
  await Firebase.initializeApp(
    options: firebaseOptions,
  );
  await initializeRemoteConfig();

  runApp(const App());
}

Future<void> initializeRemoteConfig() async {
  final remoteConfig = FirebaseRemoteConfig.instance;

  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(minutes: 5),
  ));

  await remoteConfig.setDefaults(const {
    "env": "none",
  });

  await remoteConfig.fetchAndActivate();
}
