import 'package:flutter/material.dart';

class PuzzleCharacters extends StatefulWidget {
  const PuzzleCharacters({ Key? key }) : super(key: key);

  @override
  _PuzzleCharactersState createState() => _PuzzleCharactersState();
}

class _PuzzleCharactersState extends State<PuzzleCharacters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("cokro pilus"),),
    );
  }
}