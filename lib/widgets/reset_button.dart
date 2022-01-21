import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResetButton extends StatelessWidget {
  Function reset;
  String text;

  ResetButton(this.reset, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        reset;
      },
      child: const Text("Reset"),
    );
  }
}
