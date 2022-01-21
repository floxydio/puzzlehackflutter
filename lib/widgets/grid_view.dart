import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Grid extends StatefulWidget {
  var numbers = [];
  var size;

  Grid(this.numbers, this.size, {Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  int move = 0;
  int secondsPassed = 0;
  bool whenStarted = false;
  @override
  Widget build(BuildContext context) {
    var height = widget.size.height;

    return SizedBox(
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
                          (index - 4 >= 0 && widget.numbers[index - 4] == 0) ||
                          (index + 4 < 16 && widget.numbers[index + 4] == 0)) {
                        setState(() {
                          move++;
                          widget.numbers[widget.numbers.indexOf(0)] =
                              widget.numbers[index];
                          widget.numbers[index] = 0;
                        });
                      }
                    },
                    child: Text("${widget.numbers[index]}"),
                  )
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
