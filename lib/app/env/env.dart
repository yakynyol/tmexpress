import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart' as pp;

import '../../data/local/hive_boxes.dart';
import '../../firebase_options.dart';
import '../../main.dart';
import '../injection/injection.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background,
  //such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
}

class Env {
  Env() {
    value = this;
  }

  static late Env value;
  String baseUrl = '';
  bool writeLogs = false;
  EnvType envType = EnvType.unknown;
  // PendingDynamicLinkData? dynamicLinkData;
  String cacheDir = '';

  Future<dynamic> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    cacheDir = (await pp.getTemporaryDirectory()).path;
    configureDependencies();
    await initFirebase();

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light),
    );

    await HiveBoxes.init();

    runApp(FlutterApp(this));

    // BlocOverrides.runZoned(
    //   // () => runApp(DevicePreview(
    //   //   builder: (context) => FlutterApp(this),
    //   // )),
    //   () => runApp(FlutterApp(this)),
    //   blocObserver: AppBlocObserver(),
    // );
  }

  Future<void> initFirebase() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}

enum EnvType { development, staging, production, unknown }
