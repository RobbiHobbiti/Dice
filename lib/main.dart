import 'dart:math';
import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Game", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          actions: [Icon(Icons.arrow_back_ios)],
        ),
        body: Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}