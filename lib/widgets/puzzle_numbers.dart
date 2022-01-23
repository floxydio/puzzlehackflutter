import 'package:flutter/material.dart';
import 'package:puzzlehackio/widgets/footage_.dart';
import 'package:puzzlehackio/widgets/menu_view.dart';
import 'package:puzzlehackio/widgets/my_title.dart';

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
  int move = 0;
  int secondsPassed = 0;
  bool whenStarted = false;
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
