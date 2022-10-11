import 'package:flutter/material.dart';

import '../constants.dart';

import '../components/reusable_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    String bmiResults = arguments['bmiResults'];
    String resultText = arguments['resultText'];
    String status = arguments['status'];
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR RESULTS'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(90),
                          child: Text(
                            status.toUpperCase(),
                            style: kStatusLabel,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          bmiResults,
                          style: kResultBMI,
                        ),
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 200.0,
                        child: Text(
                          resultText,
                          textAlign: TextAlign.center,
                          style: kLabelTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context, '/');
              },
              child: ReusableButton(
                buttonText: 'RE-CALCULATE',
              ))
        ],
      ),
    );
  }
}
