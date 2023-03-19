import 'package:flutter/material.dart';

import '../../modules/dashborad/dashboard_menu.dart';
import '../../modules/dashborad/dashborad_header.dart';

class DashboardMainScreen extends StatelessWidget {
  const DashboardMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        DashboardHeader(),
        DashboardMenu(),
      ]),
    );
  }
}
