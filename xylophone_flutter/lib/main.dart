import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Expanded noteButton(String soundAsset, Color buttonColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play(soundAsset);
        },
        color: buttonColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              noteButton('note1.wav', Colors.red),
              noteButton('note2.wav', Colors.blue),
              noteButton('note3.wav', Colors.green),
              noteButton('note4.wav', Colors.purple),
              noteButton('note5.wav', Colors.pink),
              noteButton('note6.wav', Colors.yellow),
              noteButton('note7.wav', Colors.cyan),
            ],
          ),
        ),
      ),
    );
  }
}
