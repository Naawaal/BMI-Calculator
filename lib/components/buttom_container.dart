import 'package:flutter/cupertino.dart';

enum WA { weight, age }

class ButtomContainer extends StatefulWidget {
  const ButtomContainer({
    super.key,
  });

  @override
  State<ButtomContainer> createState() => _ButtomContainerState();
}

var activeColor;

class _ButtomContainerState extends State<ButtomContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: (() {
            setState(() {
              activeColor = WA.weight;
            });
          }),
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: WA.weight == activeColor
                  ? const Color(0xFF1D1E33)
                  : const Color(0xFF111328),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
        )),
        Expanded(
            child: GestureDetector(
          onTap: (() {
            setState(() {
              activeColor = WA.age;
            });
          }),
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: WA.age == activeColor
                  ? const Color(0xFF1D1E33)
                  : const Color(0xFF111328),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
        )),
      ],
    ));
  }
}
