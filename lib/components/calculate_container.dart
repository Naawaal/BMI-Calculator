import 'package:flutter/material.dart';

class CalculateContainer extends StatelessWidget {
  const CalculateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
