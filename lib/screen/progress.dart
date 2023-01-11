import 'package:flutter/material.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class progress extends StatefulWidget {
  const progress({Key? key}) : super(key: key);

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      bottomNavigationBar: reuseablebottomnavigationbar(),
    );
  }
}
