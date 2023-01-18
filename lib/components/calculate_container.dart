import 'package:flutter/material.dart';

class CalculateContainer extends StatefulWidget {
  final Function onTap;

  const CalculateContainer({
    super.key,
    required this.onTap,
  });

  @override
  State<CalculateContainer> createState() => _CalculateContainerState();
}

var inActiveColor = Colors.purple;
var activeColor = Colors.deepPurple;

class _CalculateContainerState extends State<CalculateContainer> {
  //-------- Change Color for Calculate Button--------//
  void _changeCalculateColour() {
    setState(() {
      if (inActiveColor == Colors.purple) {
        inActiveColor = activeColor;
      } else {
        inActiveColor = Colors.purple;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        Navigator.pushNamed(
          context,
          '/result',
        );
        setState(() {
          _changeCalculateColour();
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: inActiveColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Calculate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
