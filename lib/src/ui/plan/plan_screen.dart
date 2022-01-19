import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  bool _switchValue = true;
  var status = Permission.location.status;

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    double o = (h + w) / 2;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 44 * h,
              ),
              Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: 16 * w,
                    right: 16 * w,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Показать все аптеки",
                        style: TextStyle(
                          color: AppTheme.dark32,
                          fontSize: 16 * o,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppTheme.fontFamilyGilroy,
                        ),
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  )),
              const Expanded(
                child: YandexMap(),
              ),
            ],
          ),
          Column(
            children: [
              const Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 24 * h, top: 100 * h),
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24 * o,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/add.svg",
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          status;
                        });
                      },
                      child: SvgPicture.asset(
                        "assets/icons/gps.svg",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
