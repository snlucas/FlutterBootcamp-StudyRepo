import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/Perfil01.jpeg'),
                ),
                Text(
                  'Lucas Nogueira',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SourceSans',
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  indent: 150.0,
                  endIndent: 150.0,
                  color: Colors.white,
                ),
                Container(
                  height: 50.0,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      Text(
                        '+55 (51) 99999-9999',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50.0,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      Text(
                        'lucas.mail@mail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
