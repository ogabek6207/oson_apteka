import 'package:flutter/material.dart';
import 'package:oson_apteka/src/dialog/center_dialog.dart';
import 'package:oson_apteka/src/examle/calendar.dart';
import 'package:oson_apteka/src/examle/example.dart';
import 'package:oson_apteka/src/examle/vebview.dart';
import 'package:oson_apteka/src/ui/home/home_screen.dart';
import 'package:oson_apteka/src/ui/main_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}
