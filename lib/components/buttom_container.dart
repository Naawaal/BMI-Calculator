import 'package:flutter/cupertino.dart';

class ButtomContainer extends StatelessWidget {
  final Color color;
  const ButtomContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        )),
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        )),
      ],
    ));
  }
}
