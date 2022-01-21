import 'package:flutter/material.dart';
import 'package:puzzlehackio/widgets/grid_view.dart';
import 'package:puzzlehackio/widgets/menu_.dart';
import 'package:puzzlehackio/widgets/my_title.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //list puzzle
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  //counter move
  int move = 0;

  static const duration = Duration(seconds: 1);
  int secondsPassed = 0;
  bool whenStarted = false;
  // Timer timer;

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // if (timer == null) {
    //   timer = Timer.periodic(duration, (Timer t) {
    //     startTime();
    //   });
    // }

    return Scaffold(
      appBar: AppBar(title: const Text("Sliding Puzzle")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyTitle(),
            Grid(numbers, size),
            Menu(reset, move, secondsPassed, size),
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

  // function to start timer
  void startTime() {
    if (whenStarted) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  // function to reset timer
  void reset() {
    setState(() {
      numbers.shuffle();
      move = 0;
      secondsPassed = 0;
      whenStarted = false;
    });
  }

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
