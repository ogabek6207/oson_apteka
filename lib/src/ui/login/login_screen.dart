import 'dart:io';
import 'package:flutter/material.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  bool isNext = false;

  @override
  void initState() {
    _controllerLogin.addListener(() {
      if (_controllerLogin.text.length >= 4 &&
          _controllerPassword.text.length >= 4) {
        if (!isNext) {
          setState(() {
            isNext = true;
          });
        }
      } else {
        if (isNext) {
          setState(() {
            isNext = false;
          });
        }
      }
    });
    super.initState();
  }

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
            height: 67 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 32 * w, right: 32 * w, top: 92 * h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Вход в аккаунт",
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 32 * o,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTheme.fontFamilyGilroy,
                    fontStyle: FontStyle.normal,
                    height: 39 / 32 * h,
                  ),
                ),
                const Spacer(),
                Text(
                  "Введите логин и пароль вашего аккаунта",
                  style: TextStyle(
                    color: AppTheme.grey,
                    fontSize: 14 * o,
                    fontFamily: AppTheme.fontFamilyGilroy,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    height: 16 / 14 * h,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    left: 32 * w,
                    right: 32 * w,
                  ),
                  child: TextField(
                    controller: _controllerLogin,
                    cursorColor: AppTheme.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Введите логин",
                      labelStyle: TextStyle(
                        color: AppTheme.grey,
                        fontFamily: AppTheme.fontFamilyGilroy,
                        fontSize: 14 * o,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        height: 16 / 14 * h,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * h,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    left: 32 * w,
                    right: 32 * w,
                  ),
                  child: TextField(
                    controller: _controllerPassword,
                    cursorColor: AppTheme.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Пароль",
                      labelStyle: TextStyle(
                        color: AppTheme.grey,
                        fontFamily: AppTheme.fontFamilyGilroy,
                        fontSize: 16 * o,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        height: 19 / 16 * h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 48 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 32 * w,
              right: 32 * w,
            ),
            decoration: BoxDecoration(
              color: isNext ? AppTheme.blue : AppTheme.dark40,
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
