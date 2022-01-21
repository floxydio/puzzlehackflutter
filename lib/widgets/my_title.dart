import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 15),
      child: Text("AYO MULAI",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
