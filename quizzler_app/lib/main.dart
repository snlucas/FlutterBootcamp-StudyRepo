import 'package:flutter/material.dart';
import 'package:quizzler_app/question.dart';

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
  int questionIndex = 0;

  List<Icon> scoreKeeper = [];
  List<Question> questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];

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

  void nextQuestion() {
    questionIndex =
        questionIndex < questionBank.length - 1 ? questionIndex + 1 : 0;
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
                questionBank[questionIndex].questionText,
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
                    questionBank[questionIndex].questionAnswer ? true : false;

                setState(() {
                  scoreKeeper.add(scoreIcon(correctAnswer));
                  nextQuestion();
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
                    questionBank[questionIndex].questionAnswer ? true : false;

                setState(() {
                  scoreKeeper.add(scoreIcon(correctAnswer));
                  nextQuestion();
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
