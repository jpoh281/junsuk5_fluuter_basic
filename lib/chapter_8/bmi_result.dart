import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;

  const BmiResult({this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    print('BMI = $bmi');

    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 결과'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _calcBmi(bmi),
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(
              height: 16,
            ),
            _buildIcon(bmi)
          ],
        ),
      ),
    );
  }

  String _calcBmi(double bmi) {
    var result = '저체중';
    if (bmi >= 35)
      result = '고도 비만';
    else if (bmi >= 30)
      result = '2단계 비만';
    else if (bmi >= 25)
      result = '1단계 비만';
    else if (bmi >= 23)
      result = '과체중';
    else if (bmi >= 18.5) result = '정상';

    return result;
  }

  Widget _buildIcon(double bmi) {
    if (bmi >= 23)
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    else if (bmi >= 18.5)
      return Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    else
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
  }
}