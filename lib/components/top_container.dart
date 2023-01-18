import 'package:flutter/cupertino.dart';

//-------- Declaring Enum for Top Container--------//
enum Gender {
  male,
  female,
}

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

//-------- Declaring Active & InActive colors for Top Container --------//
const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);

class _TopContainerState extends State<TopContainer> {
//-------- Declaring again Active & InActive colors for Top Container --------//
  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;
//-------- Change Color when Tap for Top Container--------//
  void _updateColorOnClick(Gender selectGender) {
    if (selectGender == Gender.male) {
      if (maleCardColor == inActiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inActiveColor;
      } else {
        maleCardColor = inActiveColor;
      }
    }
    if (selectGender == Gender.female) {
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
                _updateColorOnClick(Gender.male);
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
                _updateColorOnClick(Gender.female);
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
