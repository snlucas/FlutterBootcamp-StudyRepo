import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  Expanded noteButton({String soundAsset, Color buttonColor}) {
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
              noteButton(soundAsset: 'note1.wav', buttonColor: Colors.red),
              noteButton(soundAsset: 'note2.wav', buttonColor: Colors.blue),
              noteButton(soundAsset: 'note3.wav', buttonColor: Colors.green),
              noteButton(soundAsset: 'note4.wav', buttonColor: Colors.purple),
              noteButton(soundAsset: 'note5.wav', buttonColor: Colors.pink),
              noteButton(soundAsset: 'note6.wav', buttonColor: Colors.yellow),
              noteButton(soundAsset: 'note7.wav', buttonColor: Colors.cyan),
            ],
          ),
        ),
      ),
    );
  }
}
