import 'package:flutter/material.dart';
import 'package:puzzlehackio/widgets/move_.dart';
import 'package:puzzlehackio/widgets/reset_button.dart';
import 'package:puzzlehackio/widgets/time_.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  int move;
  int secondsPassed;
  // ignore: prefer_typing_uninitialized_variables
  var size;

  Menu(this.move, this.secondsPassed, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Move(move),
          Time(secondsPassed),
          ResetButton(() {}, "Reset"),
        ],
      ),
    );
  }
}
