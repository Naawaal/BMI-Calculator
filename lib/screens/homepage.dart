import 'package:bmi_calculator/components/buttom_container.dart';
import 'package:bmi_calculator/components/calculate_container.dart';
import 'package:bmi_calculator/components/top_Container.dart';
import 'package:bmi_calculator/logics/bmi_calculation.dart';
import 'package:flutter/material.dart';

import '../components/middle_container.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int height = 180;
  int weight = 40;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------Creating App Bar Widget-------//
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          //------Middle Container Widget-------//
          MiddleContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '$height cm',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                SliderTheme(
                  data: const SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 80,
                    max: 220,
                    inactiveColor: const Color(0xFF8D8E98),
                    activeColor: Colors.deepPurple,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          //------Buttom Container Widget-------//
          ButtomContainer(
            firstContainerchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Weight',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                Text('$weight',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
            secondContainerchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Age',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                Text('$age',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            ),
          ),
          //------Calculate Container Widget-------//
          CalculateContainer(
            onTap: () {
              BMICalculation calc = BMICalculation(
                height: height,
                weight: weight,
              );
            },
          ),
        ],
      ),
    );
  }
}
