import 'dart:io';
import 'package:flutter/material.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {


  @override


  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    double o = (h + w) / 2;
    return Scaffold(
      backgroundColor: AppTheme.dark,
      body: Column(
        children: [

          Container(
            height: 48 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 32 * w,
              right: 32 * w,
            ),
            decoration: BoxDecoration(
              color:   AppTheme.blue ,
              borderRadius: BorderRadius.circular(12 * o),
            ),
            child: Center(
              child: Text(
                "Войти",
                style: TextStyle(
                  color: AppTheme.grey,
                  fontSize: 16 * o,
                  fontFamily: AppTheme.fontFamilyGilroy,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  height: 19 / 16 * h,
                ),
              ),
            ),
          ),
          SizedBox(
            height: (Platform.isIOS ? 44 : 32) * h,
          ),
        ],
      ),
    );
  }
}
