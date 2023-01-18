import 'package:flutter/material.dart';

enum MiddleSlider {
  middle,
}

class MiddleContainer extends StatefulWidget {
  final Widget child;

  const MiddleContainer({
    super.key,
    required this.child,
  });

  @override
  State<MiddleContainer> createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  var inActiveColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          inActiveColor = MiddleSlider.middle;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: MiddleSlider.middle == inActiveColor
              ? const Color(0xFF1D1E33)
              : const Color(0xFF111328),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: widget.child,
      ),
    ));
  }
}
