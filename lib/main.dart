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
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;

  void ChangeDiceState() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  ChangeDiceState();
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  ChangeDiceState();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
