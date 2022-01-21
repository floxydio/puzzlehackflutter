import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzlehackio/Pages/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}
