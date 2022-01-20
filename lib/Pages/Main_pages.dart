// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puzzlehackio/Constant/Color_Constant.dart';
import 'package:puzzlehackio/Constant/Text_Constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                child: Text(
                  "Flutter Puzzle Hack",
                  style: pzText3Bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
