import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 34.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int randomBallAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[400],
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              randomBallAnswer = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$randomBallAnswer.png'),
        ),
      ),
    );
  }
}
