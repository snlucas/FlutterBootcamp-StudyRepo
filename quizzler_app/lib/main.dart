import 'package:flutter/material.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain quizBrain = new QuizBrain();

  List<Icon> scoreKeeper = [];

  Icon scoreIcon(bool value) {
    // Icon for the correct answer
    if (value) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    }

    // Icon for the wrong answer
    return Icon(
      Icons.close,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                bool correctAnswer =
                    quizBrain.getQuestionAnswer() ? true : false;

                setState(() {
                  scoreKeeper.add(scoreIcon(correctAnswer));
                  quizBrain.nextQuestion();
                });
              },
              color: Colors.green,
              child: Text('true'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                bool correctAnswer =
                    quizBrain.getQuestionAnswer() ? true : false;

                setState(() {
                  scoreKeeper.add(scoreIcon(correctAnswer));
                  quizBrain.nextQuestion();
                });
              },
              color: Colors.red,
              child: Text('false'),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
