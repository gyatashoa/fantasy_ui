import 'package:fantasy_ui/palete/theme.dart';
import 'package:fantasy_ui/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fantasy UI',
      theme: currentTheme,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
