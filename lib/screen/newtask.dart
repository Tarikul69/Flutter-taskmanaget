import 'package:flutter/material.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class newtask extends StatefulWidget {
  const newtask({Key? key}) : super(key: key);

  @override
  State<newtask> createState() => _newtaskState();
}

class _newtaskState extends State<newtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      bottomNavigationBar: reuseablebottomnavigationbar(),
    );
  }
}
