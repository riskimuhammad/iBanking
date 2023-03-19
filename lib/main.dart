import 'package:flutter/material.dart';
import 'package:ibanking/screen/main-screen.dart';
import 'package:ibanking/theme/theme.dart';

void main() {
  runApp(const InitApp());
}

class InitApp extends StatefulWidget {
  const InitApp({super.key});

  @override
  State<InitApp> createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeApp.theme(),
      home: IBanking(),
    );
  }
}

class IBanking extends StatelessWidget {
  const IBanking({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
