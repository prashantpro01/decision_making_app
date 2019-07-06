import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Decision(),
      ),
    ),
  );
}

class Decision extends StatefulWidget {
  @override
  _DecisionState createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  int decisionNo = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            decisionNo = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$decisionNo.png'),
        ),
    );
  }
}
