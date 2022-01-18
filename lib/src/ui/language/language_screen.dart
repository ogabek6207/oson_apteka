import 'dart:io';
import 'package:flutter/material.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

bool uz = false;
bool ru = false;

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    double o = (h + w) / 2;

    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Column(
            children: [
              Image.asset(
                "assets/images/language.png",
                height: 205 * o,
                width: 205 * o,
              ),
              SizedBox(
                height: 16 * w,
              ),
              Text(
                "Выберите язык",
                style: TextStyle(
                  color: AppTheme.white,
                  fontSize: 24 * o,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppTheme.fontFamilyGilroy,
                  fontStyle: FontStyle.normal,
                  height: 29 / 24 * h,
                ),
              ),
              SizedBox(
                height: 8 * h,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 48 * w, right: 48 * w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ru = false;
                          uz = true;
                        });
                      },
                      child: Container(
                        height: 72 * h,
                        width: 132 * w,
                        decoration: BoxDecoration(
                          color: AppTheme.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.shadow.withOpacity(0.25),
                              blurRadius: 12,
                              spreadRadius: 0,
                              offset: Offset(0, 8 * h),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16 * o),
                          border: Border.all(
                              color: uz ? AppTheme.blue : AppTheme.shadow,
                              width: 2),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/uz.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15 * w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ru = true;
                          uz = false;
                        });
                      },
                      child: Container(
                        height: 72 * h,
                        width: 132 * w,
                        decoration: BoxDecoration(
                          color: AppTheme.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.shadow.withOpacity(0.05),
                              blurRadius: 12,
                              spreadRadius: 0,
                              offset: const Offset(0, 8),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16 * o),
                          border: Border.all(
                              color: ru ? AppTheme.blue : AppTheme.shadow,
                              width: 2),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/ru.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 48 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 32 * w,
              right: 32 * w,
            ),
            decoration: BoxDecoration(
              color: AppTheme.blue,
              borderRadius: BorderRadius.circular(12 * o),
            ),
            child: Center(
              child: Text(
                "Продлжить",
                style: TextStyle(
                  color: AppTheme.white,
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
