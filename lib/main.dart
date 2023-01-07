import 'package:flutter/material.dart';
import 'screen/splash.dart';
void main() {
  runApp(MaterialApp(
       home: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splash(),
      ),
    );
  }
}
