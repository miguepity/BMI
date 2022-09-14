import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xff0a0e21),
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: InputPage(),
    );
  }
}
