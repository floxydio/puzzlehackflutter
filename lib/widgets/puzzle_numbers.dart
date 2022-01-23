import 'package:flutter/material.dart';
import 'package:puzzlehackio/ui/footage_.dart';
import 'package:puzzlehackio/ui/menu_view.dart';
import 'package:puzzlehackio/ui/my_title.dart';

// ignore: must_be_immutable
class PuzzleNumbers extends StatefulWidget {
  var numbers = [];
  // ignore: prefer_typing_uninitialized_variables
  var size;

  PuzzleNumbers(this.numbers, this.size, {Key? key}) : super(key: key);

  @override
  State<PuzzleNumbers> createState() => _PuzzleNumbersState();
}

class _PuzzleNumbersState extends State<PuzzleNumbers> {
  var numbers = [];
  int move = 0;
  int secondsPassed = 0;
  bool whenStarted = false;
  bool whenFinished(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = widget.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyTitle(),
            SizedBox(
              height: height * 0.60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: widget.numbers.length,
                  itemBuilder: (context, index) {
                    return widget.numbers[index] != 0
                        ? ElevatedButton(
                            onPressed: () {
                              if (secondsPassed == 0) {
                                whenStarted = true;
                              }
                              if (index - 1 >= 0 &&
                                      widget.numbers[index - 1] == 0 &&
                                      index % 4 != 0 ||
                                  index + 1 < 16 &&
                                      widget.numbers[index + 1] == 0 &&
                                      (index + 1) % 4 != 0 ||
                                  (index - 4 >= 0 &&
                                      widget.numbers[index - 4] == 0) ||
                                  (index + 4 < 16 &&
                                      widget.numbers[index + 4] == 0)) {
                                setState(() {
                                  move++;
                                  widget.numbers[widget.numbers.indexOf(0)] =
                                      widget.numbers[index];
                                  widget.numbers[index] = 0;
                                });
                              }
                              if (whenFinished(numbers)) {
                                whenStarted = false;
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: SizedBox(
                                          height: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  "You Win!!",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  width: 220.0,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "Close",
                                                      style: TextStyle(
                                                          color: Colors.white),
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
                              // print(move);
                            },
                            child: Text("${widget.numbers[index]}"),
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ),
            ),
            Menu(move, secondsPassed, size),
            const Footage()
          ],
        ),
      ),
    );
  }
}
