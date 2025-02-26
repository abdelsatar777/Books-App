import 'package:books_app/features/home/UI/screens/home_screen.dart';
import 'package:books_app/features/splash/UI/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/resources/app_colors.dart';

void main() => runApp(BooksApp());

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home_screen": (context) => HomeScreen(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      home: SplashScreen(),
    );
  }
}
