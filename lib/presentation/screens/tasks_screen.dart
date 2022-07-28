import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/screens/tasks_view.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: (() {}),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: const TasksView(),
    );
  }
}
