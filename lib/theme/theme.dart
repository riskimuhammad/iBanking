import 'package:flutter/material.dart';
import 'package:ibanking/theme/color.dart';

class ThemeApp {
  static theme() {
    return ThemeData(
        useMaterial3: true,
        backgroundColor: ColorApp.white,
        scaffoldBackgroundColor: ColorApp.white,
        textTheme: TextTheme());
  }
}
