import 'package:flutter/material.dart';
import 'package:puzzlehackio/constant/text_constant_.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0, bottom: 15.0),
      child: Column(
        children: [
          Text("Puzzle Fun", style: judul),
          const SizedBox(
            height: 25,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Hello there" " " "👋", style: judul)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Try to solve this puzzle", style: judul)),
          ],
      ),
    );
  }
}
