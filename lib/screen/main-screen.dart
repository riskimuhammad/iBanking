import 'package:flutter/material.dart';
import 'package:ibanking/components/template.dart';
import 'package:ibanking/screen/dashboard/dashboard_main_screen.dart';
import 'package:ibanking/theme/color.dart';
import 'package:ibanking/theme/text_style.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Template.scaffold(
        context: context,
        left: 0,
        right: 0,
        bottom: 0,
        top: 0,
        bottomNavigationBar: BottomNavigationBar(
            elevation: 20.0,
            backgroundColor: ColorApp.white,
            type: BottomNavigationBarType.shifting,
            selectedIconTheme: IconThemeData(
              color: ColorApp.primary,
            ),
            unselectedIconTheme: IconThemeData(color: ColorApp.grey),
            currentIndex: currentIndex,
            onTap: _onTap,
            selectedItemColor: ColorApp.primary,
            unselectedItemColor: ColorApp.grey,
            unselectedLabelStyle: TextStyleApp.textstyleGraySize12,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyleApp.textstyleDarkBlueSize12,
            items: _bottomnavitem),
        body: _listbody.elementAt(currentIndex));
  }

  final List<BottomNavigationBarItem> _bottomnavitem = [
    BottomNavigationBarItem(
      label: 'Dashborad',
      icon: Icon(
        Icons.dashboard,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Mutasi',
      icon: Icon(Icons.list_alt_rounded),
    ),
    BottomNavigationBarItem(
      label: 'Aktivitas',
      icon: Icon(Icons.mail_rounded),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      icon: Icon(Icons.account_circle_rounded),
    ),
  ];

  final List<Widget> _listbody = [
    DashboardMainScreen(),
    DashboardMainScreen(),
    DashboardMainScreen(),
    DashboardMainScreen()
  ];
  _onTap(index) {
    currentIndex = index;
    setState(() {});
  }
}
