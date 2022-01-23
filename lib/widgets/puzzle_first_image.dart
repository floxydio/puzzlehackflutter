import 'package:flutter/material.dart';

class FirstPuzzle extends StatefulWidget {
  const FirstPuzzle({ Key? key }) : super(key: key);

  @override
  _FirstPuzzleState createState() => _FirstPuzzleState();
}

class _FirstPuzzleState extends State<FirstPuzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cokro 1"))
    );
  }
}