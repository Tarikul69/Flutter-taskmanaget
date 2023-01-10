import 'package:flutter/material.dart';
import 'package:taskmanager/screen/home.dart';
import 'screen/splash.dart';
import 'screen/updateprofile.dart';

void main() {
  runApp(
    const MaterialApp(
      home: home(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splash(),
      ),
    );
  }
}
