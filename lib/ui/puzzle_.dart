import 'package:flutter/material.dart';
import 'package:puzzlehackio/widgets/puzzle_characters.dart';
import 'package:puzzlehackio/widgets/puzzle_fifth_image.dart';
import 'package:puzzlehackio/widgets/puzzle_first_image.dart';
import 'package:puzzlehackio/widgets/puzzle_fourth_image.dart';
import 'package:puzzlehackio/widgets/puzzle_numbers.dart';
import 'package:get/route_manager.dart';
import 'package:puzzlehackio/widgets/puzzle_second_image.dart';
import 'package:puzzlehackio/widgets/puzzle_sixth_image.dart';
import 'package:puzzlehackio/widgets/puzzle_third_image.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.11,
      child: Center(
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 0.0, right: 15.0, bottom: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.blue),
                                borderRadius: BorderRadius.circular(5)),
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.camera_alt,
                                    size: 30, color: Colors.blue),
                                SizedBox(height: 5),
                                Text("Custom")
                              ],
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(PuzzleNumbers(numbers, size));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(10)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/123.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const PuzzleCharacters());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const FirstPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SecondPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const ThirdPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const FourthPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const FifthPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SixthPuzzle());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          width: 85,
                          height: 85,
                          child: Image.asset("assets/macan.png",
                              fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
