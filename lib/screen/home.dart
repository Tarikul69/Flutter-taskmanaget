import 'package:flutter/material.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
  MaterialStateProperty;
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: topbar(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 1200,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("data"),
                            Text("Date: 01/02/2023"),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Completed",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  style:  ButtonStyle(
                                    shape:
                                  ),
                                ),
                                Icon(
                                  Icons.delete,
                                ),
                                Icon(
                                  Icons.delete,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
