import 'dart:io';

import 'package:flutter/material.dart';
import 'package:oson_apteka/src/ui/login/login_screen.dart';
import 'package:oson_apteka/src/ui/main_screen.dart';
import 'package:oson_apteka/src/ui/splash/splash_screen.dart';





class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
