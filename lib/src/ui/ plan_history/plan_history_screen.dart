import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';

class PlanHistoryScreen extends StatefulWidget {
  const PlanHistoryScreen({Key? key}) : super(key: key);

  @override
  _PlanHistoryScreenState createState() => _PlanHistoryScreenState();
}

class _PlanHistoryScreenState extends State<PlanHistoryScreen> {
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
          "История плана",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppTheme.dark34,
            fontFamily: AppTheme.fontFamilyGilroy,
            fontWeight: FontWeight.bold,
            fontSize: 18 * o,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 16 * w),
              child: SvgPicture.asset(
                "assets/icons/calendar.svg",
              )),
        ],
      ),
    );
  }
}
