import 'package:flutter/material.dart';
import 'package:taskmanager/screen/completed.dart';
import 'package:taskmanager/screen/home.dart';
import 'package:taskmanager/screen/newtask.dart';

AppBar topbar() {
  return appBar12;
}

AppBar get appBar12 {
  return AppBar(
  title: InkWell(

    child: const ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text(
        "Tarikul Abir",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "tarikulabir931@gmail.com",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ),
  backgroundColor: Colors.green[400],
);
}
//BottomnavigationBar

//Card
class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  const Text(
                    "Lorem Ipsum is simply dummy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text("data"),
                  const Text("Date: 01/02/2023"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style:  const ButtonStyle(

                        ),
                        child: const Text(
                          "Completed",
                          style:
                          TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 200,),
                      const Icon(
                        Icons.delete,
                      ),
                      const Icon(
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
    );
  }
}

//Bottom navigation bar
class reuseablebottomnavigationbar extends StatelessWidget {
  const reuseablebottomnavigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (value == 0)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home()));
        if (value == 1)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => completed()));
        if (value == 2)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => newtask()));
        if (value == 3)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home()));
      },
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,

      //selectedLabelStyle: Sele,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.task_outlined),
          label: "New Task",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.task), label: "Completed"),
        BottomNavigationBarItem(
            icon: Icon(Icons.task_outlined), label: "New Task"),
        BottomNavigationBarItem(
            icon: Icon(Icons.task_outlined), label: "Progress"),
      ],
    );
  }
}

