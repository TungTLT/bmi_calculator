import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  void calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMIScore() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi >= 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try more exercise!';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal weight. You should eat more!';
    }
  }
}
