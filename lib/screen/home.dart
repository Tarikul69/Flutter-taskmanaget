import 'package:flutter/material.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: topbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),

            ],
          ),
        ),
      ),
    );
  }
}

