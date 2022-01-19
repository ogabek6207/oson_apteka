import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    double o = (h + w) / 2;
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.white,
        title: Text(
          "Статистика за месяц",
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
      body: Column(children: [
        Container(
          height: 64 * h,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 16 * w, right: 16 * w, top: 24 * h),
          padding: EdgeInsets.only(
            left: 28 * w,
            right: 28 * w,
          ),
          child: Row(
            children: [
              Container(
             color: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/icons/arrow_left.svg",
                ),
              ),
              const Spacer(),

              Text(
                "Март",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.dark32,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppTheme.fontFamilyGilroy,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/icons/arrow_right.svg",
                ),
              ),

            ],
          ),
        ),
        Container(height: 305*h,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 16 * w, right: 16 * w, ),
          child: ClipRRect(
            child: Image.asset("assets/images/graphic.png",),
          ),
        ),
      ]),
    );
  }
}
