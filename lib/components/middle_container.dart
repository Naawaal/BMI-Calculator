import 'package:flutter/cupertino.dart';

class MiddleContainer extends StatelessWidget {
  final Color color;
  const MiddleContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    ));
  }
}
