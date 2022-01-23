import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Move extends StatelessWidget {
  int move;
  Move(
    this.move, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 48,
      child: Card(
        child: Center(
          child: Text(
            "Move: $move",
            style: const TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
