import 'package:bmi_calculator/components/top_container.dart';
import 'package:flutter/cupertino.dart';

class TopContainer extends StatefulWidget {
  final Widget firstContainerchild;
  final Widget secondContainerchild;
  const TopContainer({
    super.key,
    required this.firstContainerchild,
    required this.secondContainerchild,
  });

  @override
  State<TopContainer> createState() => _TopContainerState();
}

const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);

class _TopContainerState extends State<TopContainer> {
  //-------- Inactive Color for male and female--------//
  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;

  void _updateColorOnClick(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inActiveColor;
      } else {
        maleCardColor = inActiveColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inActiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inActiveColor;
      } else {
        femaleCardColor = inActiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _updateColorOnClick(1);
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: maleCardColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: widget.firstContainerchild,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _updateColorOnClick(2);
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: femaleCardColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: widget.secondContainerchild,
            ),
          ),
        ),
      ],
    ));
  }
}
