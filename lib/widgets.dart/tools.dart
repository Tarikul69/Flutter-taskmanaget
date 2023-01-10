import 'package:flutter/material.dart';

AppBar topbar() {
  return AppBar(
    title: const ListTile(
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
    backgroundColor: Colors.green[400],
  );
}


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
