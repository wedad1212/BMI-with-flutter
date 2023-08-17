import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get ResultPharse {
    String ResultText = '';
    if (result >= 30)
      ResultText = 'obese';
    else if (result < 25 && result > 29.9)
      ResultText = 'over weight';
    else if (result < 18.5 && result > 24.9)
      ResultText = 'normal';
    else
      ResultText = 'thin';

    return ResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Result"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender : ${isMale ? 'male' : 'female'}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Result : ${result.toStringAsFixed(1)}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Healthiness : ${ResultPharse} ',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Age : $age',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ));
  }
}
