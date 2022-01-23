import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Time extends StatelessWidget {
  int secondsPassed;

  Time(this.secondsPassed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 48,
      child: Card(
        child: Center(
          child: Text(
            "Time: $secondsPassed",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
