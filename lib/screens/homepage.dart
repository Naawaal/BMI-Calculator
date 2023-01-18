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
        children: [
          //------Top Container Widget-------//
          TopContainer(
            firstContainerchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/png/male.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Male',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            secondContainerchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/png/female.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text('Female',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          //------Middle Container Widget-------//
          const MiddleContainer(),
          //------Buttom Container Widget-------//
          const ButtomContainer(
            color: Color(0xFF1D1E33),
          ),
          //------Calculate Container Widget-------//
          const CalculateContainer(),
        ],
      ),
    );
  }
}
