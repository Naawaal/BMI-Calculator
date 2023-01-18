import 'dart:math';

class BMICalculation {
  final int height;
  final int weight;

  double _bmi = 0;

  BMICalculation({
    required this.height,
    required this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI result is quite high, you should exercise more!';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is quite normal, good job!';
    } else {
      return 'Your BMI result is quite low, you should eat more!';
    }
  }
}
