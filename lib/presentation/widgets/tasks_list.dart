import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/Task.dart';
import 'package:flutter_todoey/presentation/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void toggleIsChecked(int index) {
    setState(() {
      tasks[index].toggleDone();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: ((context, index) {
          return TaskTile(
            index: index,
            title: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: toggleIsChecked,
          );
        }));
  }
}
