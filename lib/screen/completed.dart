import 'package:flutter/material.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class completed extends StatefulWidget {
  const completed({Key? key}) : super(key: key);

  @override
  State<completed> createState() => _completedState();
}

class _completedState extends State<completed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      bottomNavigationBar: reuseablebottomnavigationbar(),
    );
  }
}
