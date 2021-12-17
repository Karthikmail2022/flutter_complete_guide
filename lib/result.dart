import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore > 100)
      resultText = 'You are awesome! Score: $resultScore';
    else if (resultScore > 80)
      resultText = 'You are good! Score: $resultScore';
    else if (resultScore > 60)
      resultText = 'You are strange! Score: $resultScore';
    else
      resultText = 'You are so bad!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            color: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
