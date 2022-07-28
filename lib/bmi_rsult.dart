import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  BmiResult({
    required this.result,
    required this.isMale,
    required this.age,
});
  final double result;
  final bool isMale;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale? 'Male' : 'Female'}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text('Result : ${result.round()} ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text('Age : $age', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
