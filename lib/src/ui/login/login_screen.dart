import 'dart:io';
import 'package:flutter/material.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/ui/error/error_screen.dart';
import 'package:oson_apteka/src/utils/utils.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  // final Repository _repository = Repository();
  bool isNext = false;
  bool eye = false;
  bool _loading = false;
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
                    style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 16 * o,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                    controller: _controllerLogin,
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
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: eye,
                          controller: _controllerPassword,
                          style: TextStyle(
                            color: AppTheme.white,
                            fontSize: 16 * o,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  eye = !eye;
                                });
                              },
                              child: eye
                                  ? SvgPicture.asset("assets/icons/eye.svg",
                              height: 24*o,
                                width: 24*o,
                              )
                                  : SvgPicture.asset(
                                      "assets/icons/eye_hide.svg",
                                height: 24*o,
                                width: 24*o,
                              ),
                            ),
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
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ErrorScreen();
                  },
                ),
              );
            },
            child: Container(
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
          ),
          SizedBox(
            height: (Platform.isIOS ? 44 : 32) * h,
          ),
        ],
      ),
    );
  }
  // Future<void> sendData(String login) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString(
  //     "phoneNumber",
  //     _controllerLogin.text,
  //   );
  //   var info = await _repository.sendLogin(login);
  //   setState(() {
  //     _loading = true;
  //   });
  //   if (info.isSucces) {
  //     LoginModel loginModel = LoginModel.fromJson(info.result);
  //     setState(() {
  //       _loading = false;
  //     });
  //
  //   } else {
  //     setState(() {
  //       _loading = false;
  //     });
  //
  //     ///error
  //   }
  // }
}
