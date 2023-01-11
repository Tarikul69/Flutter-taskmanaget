import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class addnewtask extends StatefulWidget {
  const addnewtask({Key? key}) : super(key: key);

  @override
  State<addnewtask> createState() => _addnewtaskState();
}

class _addnewtaskState extends State<addnewtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/background.svg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Add New Task",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Subject",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Description",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add"),
                      style: ButtonStyle(),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
