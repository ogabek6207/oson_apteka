import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.white,
        title: Text("Статистика за месяц",
        textAlign: TextAlign.center,
        style: TextStyle(

          color: AppTheme.dark32,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: AppTheme.fontFamilyGilroy,
          fontStyle: FontStyle.normal,
        ),


        ),




      ),
      body: Column(
          children: [

      ),
    );
  }
}
