import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftdice=1;
  int rightdice=2;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('DICE APP'), backgroundColor: Colors.red),
      body: Center(
          child: Row(
        children: [
          TextButton(onPressed: () {
            setState(() {
              rightdice=Random(). nextInt((6) +1);
            });

          }, child: Image.asset('image/dice$leftdice.png'),

          ),
          TextButton(onPressed: () {
            setState(() {
              leftdice=Random().nextInt((6)+1);
            });
          }, child: Image.asset('image/dice$rightdice.png'))
        ],
      )),
    ));
  }
}
