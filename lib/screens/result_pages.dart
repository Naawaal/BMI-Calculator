import 'package:flutter/material.dart';

class ResultPages extends StatefulWidget {
  const ResultPages({
    super.key,
  });

  @override
  State<ResultPages> createState() => _ResultPagesState();
}

class _ResultPagesState extends State<ResultPages> {
  //-------- Change Color for Re-Calculate Button--------//
  var activeColor = Colors.deepPurple;
  var inActiveColor = Colors.purple;
  void _changeReCalculatedColor() {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: const Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Normal',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '18.3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              setState(() {
                _changeReCalculatedColor();
              });
            },
            child: Container(
              margin:
                  const EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: inActiveColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
