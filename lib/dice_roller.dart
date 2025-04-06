import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller> {
  List activeDiceImage = [
    "assets/dice-images/dice-1.png",
    "assets/dice-images/dice-2.png",
    "assets/dice-images/dice-3.png",
    "assets/dice-images/dice-4.png",
    "assets/dice-images/dice-5.png",
    "assets/dice-images/dice-6.png",
  ];
  String sides = "assets/dice-images/dice-1.png";

  void dice() {
    int i = Random().nextInt(6);

    if (i == 1) {
      setState(() {
        sides = activeDiceImage[0];
      });
    }else if (i == 2) {
      setState(() {
        sides = activeDiceImage[1];
      });
    }else if (i == 3) {
      setState(() {
        sides = activeDiceImage[2];
      });
    }else if (i == 4) {
      setState(() {
        sides = activeDiceImage[3];
      });
    }else if (i == 5) {
      setState(() {
        sides = activeDiceImage[4];
      });
    }else if (i == 6) {
      setState(() {
        sides = activeDiceImage[5];
      });
    }

  }

  @override
  Widget build(context) {
    return Center(
      child: ElevatedButton(
        onPressed: dice,
        child: Image.asset("$sides", width: 200),
      ),
    );
  }
}
