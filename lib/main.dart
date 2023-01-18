import 'package:bmi_calculator/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BmiClculator());

/// This is the main application widget.//
class BmiClculator extends StatelessWidget {
  const BmiClculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: const HomepageScreen(),
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
