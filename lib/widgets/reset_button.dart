import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResetButton extends StatefulWidget {
  Function reset;
  String text;

  ResetButton(this.reset, this.text, {Key? key}) : super(key: key);

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int move = 0;
  int secondsPassed = 0;
  bool whenStarted = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          numbers.shuffle();
          move = 1;
          secondsPassed = 0;
          whenStarted = false;
        });
      },
      child: Row(
        children: const [Text("Shuffle"), Icon(Icons.shuffle)],
      ),
    );
  }
}
