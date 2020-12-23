import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Center(
              child: Text('I am Poor'),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/stone.jpg'),
            ),
          ),
        ),
      ),
    );
