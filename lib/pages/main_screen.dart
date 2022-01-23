import 'dart:async';
import 'package:flutter/material.dart';
import 'package:puzzlehackio/widgets/footage_.dart';
import 'package:puzzlehackio/widgets/my_title.dart';
import 'package:puzzlehackio/widgets/puzzle_characters.dart';
import 'package:puzzlehackio/widgets/puzzle_numbers.dart';

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
          children: [
            const MyTitle(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.11,
              child: Center(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5)),
                                width: 85,
                                height: 85,
                                child: Image.asset("assets/macan.png",
                                    fit: BoxFit.contain)),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            PuzzleNumbers(numbers, size)));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 85,
                                height: 85,
                                child: Image.asset("assets/123.png",
                                    fit: BoxFit.contain),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            PuzzleCharacters()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 85,
                                height: 85,
                                child: Image.asset(
                                  "assets/abc.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 85,
                              child: Image.asset("assets/macan.png",
                                  fit: BoxFit.contain),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Grid(numbers, size),
            // Menu(move, secondsPassed, size),
            const Footage()
          ],
        ),
      ),
    );
  }

  // function to moving puzzle
  // void movePuzzle(index) {
  //   if (secondsPassed == 0) {
  //     whenStarted = true;
  //   }
  //   if (index - 1 >= 0 && numbers[index - 1] == 0 && index % 4 != 0 ||
  //       index + 1 < 16 && numbers[index + 1] == 0 && (index + 1) % 4 != 0 ||
  //       (index - 4 >= 0 && numbers[index - 4] == 0) ||
  //       (index + 4 < 16 && numbers[index + 4] == 0)) {
  //     setState(() {
  //       move++;
  //       numbers[numbers.indexOf(0)] = numbers[index];
  //       numbers[index] = 0;
  //     });
  //   }
  //   checkWin();
  // }

  // check condition of status game (finish or not)
  bool whenFinished(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  // function when user finished the game
  void checkWin() {
    if (whenFinished(numbers)) {
      whenStarted = false;
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "You Win!!",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 220.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }
}
