import 'package:flutter/cupertino.dart';

class TopContainer extends StatelessWidget {
  final Color color;
  final Widget firstContainerchild;
  final Widget secondContainerchild;
  const TopContainer({
    super.key,
    required this.color,
    required this.firstContainerchild,
    required this.secondContainerchild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: firstContainerchild,
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: secondContainerchild,
          ),
        ),
      ],
    ));
  }
}
