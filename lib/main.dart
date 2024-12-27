import 'package:flutter/material.dart';
import 'package:mvvm_learning/constants/my_app_theme.dart';
import 'package:mvvm_learning/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      home: const MoviesScreen(),
    );
  }
}
