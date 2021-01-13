import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = 0xFF1D1E33;
const kBottomContainerColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Color(kActiveCardColor),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(kActiveCardColor),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.female,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(kActiveCardColor),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Color(kActiveCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(kActiveCardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            height: kBottomContainerHeight,
            width: double.infinity,
            child: Text(
              'CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(kBottomContainerColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({@required this.icon, @required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF808E98),
          ),
        ),
      ],
    );
  }
}
