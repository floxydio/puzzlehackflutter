import 'package:flutter/material.dart';
import 'package:puzzlehackio/constant/text_constant_.dart';

class Footage extends StatelessWidget {
  const Footage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text("Fun Fact", style: judul),
            ),
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Image.asset("assets/puzzle-gear.png")),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                      "It was believed that in 1767, Mr John Spilsbury, an English cartographer, made the very first jigsaw puzzle when he mounted a map on a sheet of hardwood and cut it using a saw.",
                      style: judul),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
