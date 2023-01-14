import 'package:flutter/material.dart';
import 'package:taskmanager/network/network_request.dart';
import 'package:taskmanager/network/urls.dart';
import 'package:taskmanager/screen/addnewtask.dart';
import 'package:taskmanager/models/new_task_model.dart';
import 'package:taskmanager/widgets.dart/tools.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  NewTaskModel? _newTaskModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getNewTaskFromApi();
    });
  }

 Future<void>  getNewTaskFromApi()  async{
    final response = await NetworkRequester().getRequest(Urls.newTask);
    if(response['status'] == 'success'){
      _newTaskModel = NewTaskModel.fromJson(response);
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: topbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              card(),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[400],
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const addnewtask()));
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: reuseablebottomnavigationbar(),
      ),
    );
  }
}
