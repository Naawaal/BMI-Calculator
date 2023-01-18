import 'package:bmi_calculator/components/buttom_container.dart';
import 'package:bmi_calculator/components/calculate_container.dart';
import 'package:bmi_calculator/components/top_Container.dart';
import 'package:flutter/material.dart';

import '../components/middle_container.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: const [
          TopContainer(
            color: Color(0xFF1D1E33),
          ),
          MiddleContainer(
            color: Color(0xFF1D1E33),
          ),
          ButtomContainer(
            color: Color(0xFF1D1E33),
          ),
          CalculateContainer(),
        ],
      ),
    );
  }
}
