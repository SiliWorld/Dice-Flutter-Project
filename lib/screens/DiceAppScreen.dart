// ignore_for_file: file_names
import 'dart:math';

import 'package:dice/Widgets/dice_field.dart';
import 'package:flutter/material.dart';

class DiceAppScreen extends StatefulWidget {
  @override
  State<DiceAppScreen> createState() => _DiceAppScreenState();
}

class _DiceAppScreenState extends State<DiceAppScreen> {
  final List<String> boxOfDices = [
    "dices/dice1.png",
    "dices/dice2.png",
    "dices/dice3.png",
    "dices/dice4.png",
    "dices/dice5.png",
    "dices/dice6.png",
  ];
  List<String> playingDices = [
    "dices/dice1.png",
    "dices/dice2.png",
  ];

  void changeDice() {
    setState(() {
      Random random = Random();
      playingDices[0] = boxOfDices[random.nextInt(boxOfDices.length)];
      playingDices[1] = boxOfDices[random.nextInt(boxOfDices.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagesV(playingDices: playingDices),
              SizedBox(height: 100),
              MaterialButton(
                  onPressed: changeDice,
                  child: Text("Change dices"),
                  color: Colors.pinkAccent[400],
              )
            ],
          ),
        ),
      ),
    );
  }
}

