import 'package:flutter/material.dart';

class MiddleContainer extends StatefulWidget {
  const MiddleContainer({super.key});

  @override
  State<MiddleContainer> createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  //-------- Declaring Active & InActive colors for Middle Container --------//
  Color inActiveColor = const Color(0xFF111328);
  Color activeColor = const Color(0xFF1D1E33);
  //-------- Change Color for Middle Container--------//
  void _changeMiddleContainerColorOnClick() {
    setState(() {
      if (inActiveColor == const Color(0xFF111328)) {
        inActiveColor = activeColor;
      } else {
        inActiveColor = const Color(0xFF111328);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          _changeMiddleContainerColorOnClick();
        });
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: inActiveColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ));
  }
}
