
import 'package:flutter/material.dart';
import 'time_.dart';
import 'reset_button.dart';
import 'move_.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {

  Function reset;
  int move;
  int secondsPassed;
  var size;

  Menu(this.reset, this.move, this.secondsPassed, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResetButton(reset, "Reset"),
          Move(move),
          Time(secondsPassed),
        ],
      ),
    );
  }
}