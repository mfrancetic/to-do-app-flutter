// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/provider/task_model.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final Task task = context.watch<TaskModel>().tasks[index];

    return ListTile(
        title: Text(
          task.name,
          style: TextStyle(
              decoration: task.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            value: task.isDone,
            activeColor: Colors.lightBlueAccent,
            onChanged: (newValue) {
              context.read<TaskModel>().toggleTaskDone(index);
            }));
  }
}
