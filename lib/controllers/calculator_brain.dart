import 'dart:math';

import '../pages/input_page.dart';

class CalculatorBrain {
  CalculatorBrain();

  int height = 180;
  int weight = 70;
  int age = 20;
  Gender? selectedGender;

  double _bmi = 0;

  String calculateBMI() {
    if (height != 0 && weight != 0) {
      _bmi = weight / pow(height / 100, 2);
      return _bmi.toStringAsFixed(1);
    } else {
      return '';
    }
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
      return 'You have a higher than normal body weight. try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
