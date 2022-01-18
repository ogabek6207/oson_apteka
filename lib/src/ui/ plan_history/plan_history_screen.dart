import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';

class PlanHistoryScreen extends StatefulWidget {
  const PlanHistoryScreen({Key? key}) : super(key: key);

  @override
  _PlanHistoryScreenState createState() => _PlanHistoryScreenState();
}

class _PlanHistoryScreenState extends State<PlanHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
    );
  }
}
