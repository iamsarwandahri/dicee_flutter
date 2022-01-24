import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 5;
  int right = 1;
  Random rand = Random();
  void changeState() {
    setState(() {
      right = rand.nextInt(6) + 1;
      left = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$left.png'),
            onPressed: changeState,
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$right.png'),
            onPressed: changeState,
          ))
        ],
      ),
    );
  }
}
