import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oson_apteka/src/appTheme/app_theme.dart';
import 'package:oson_apteka/src/ui/%20notifications/notifications_screen.dart';
import 'package:oson_apteka/src/ui/%20plan_history/plan_history_screen.dart';
import 'package:oson_apteka/src/ui/plan/plan_screen.dart';
import 'package:oson_apteka/src/ui/profile/profile_screen.dart';
import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  int userId = 0;
  int userGender = 0;
  String userName = "", userImage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        const PlanScreen(),
        const PlanHistoryScreen(),
        const NotificationsScreen(),
        const ProfileScreen(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (_index) {
          setState(() {
            _selectedIndex = _index;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(
          color: Colors.red,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        selectedItemColor: AppTheme.blue,
        elevation: 10,
        iconSize: 100,
        selectedFontSize: 20,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset("assets/menu/select_home.svg")
                : SvgPicture.asset("assets/menu/home.svg"),
            label: "",
            backgroundColor: AppTheme.white,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(
              "assets/menu/select_plan.svg",

            )
                : SvgPicture.asset(
              "assets/menu/plan.svg",
            ),
            label: "",
            backgroundColor: AppTheme.black,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset(
              "assets/menu/select_plan_history.svg",

            )
                : SvgPicture.asset(
              "assets/menu/plan_history.svg",
            ),
            label: "",
            backgroundColor: AppTheme.black,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset(
              "assets/menu/select_notification.svg",

            )
                : SvgPicture.asset(
              "assets/menu/notification.svg",
            ),
            label: "",
            backgroundColor: AppTheme.blue,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? SvgPicture.asset(
              "assets/menu/select_profile.svg",

            )
                : SvgPicture.asset(
              "assets/menu/profile.svg",
            ),
            label: "",
            backgroundColor: AppTheme.blue,
          ),
        ],
      ),
    );
  }
}
