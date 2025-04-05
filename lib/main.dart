import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

void dice(){

}

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
          child: ElevatedButton(onPressed: dice, child: Image.asset("assets/dice-images/dice-1.png")),
        ),
      ),
    );
  }
}