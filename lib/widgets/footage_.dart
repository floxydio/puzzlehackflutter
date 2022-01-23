import 'package:flutter/material.dart';
import 'package:puzzlehackio/constant/text_constant_.dart';

class Footage extends StatelessWidget {
  const Footage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Fun Fact", style: judul),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Stack(
            children: [
              Image.asset("assets/puzzle-gear.png"),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                    "It was believed that in 1767, Mr John Spilsbury, an English cartographer, made the very first jigsaw puzzle when he mounted a map on a sheet of hardwood and cut it using a saw.",
                    style: judul),
            
              )
            ],
          ),
        )
      ],
    );
  }
}
