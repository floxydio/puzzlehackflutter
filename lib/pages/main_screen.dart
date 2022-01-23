import 'dart:async';
import 'package:flutter/material.dart';
import 'package:puzzlehackio/ui/footage_.dart';
import 'package:puzzlehackio/ui/my_title.dart';
import 'package:puzzlehackio/ui/puzzle_.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //list puzzle
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  var characters = ["A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P"];
  //counter move
  int move = 0;

  static const duration = Duration(seconds: 1);
  int secondsPassed = 0;
  bool whenStarted = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    timer ??= Timer.periodic(duration, (Timer t) {
      if (whenStarted) {
        setState(() {
          secondsPassed = secondsPassed + 1;
        });
      }
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MyTitle(),
            Puzzle(),
            Footage()
          ],
        ),
      ),
    );
  }
}
