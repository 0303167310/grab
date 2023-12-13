import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabb/pages/home_screen.dart';
import 'package:grabb/pages/login_screen.dart';
import 'pages/splash_screen.dart';
import 'utils/mytheme.dart';
import 'package:grabb/controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyD3CbEe4dCmRvyn_fiVNhKv721H6HIlD5A",
            appId: "1:1026651677420:android:a7a35592ba56eec29cbbc9",
            messagingSenderId: "1026651677420",
            projectId: "movieapp-81f29",
          ),
        )
      : await Firebase.initializeApp();
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyTheme.myLightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
