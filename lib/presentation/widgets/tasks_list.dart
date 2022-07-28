import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        TaskTile(title: 'To Do Task 1'),
        TaskTile(title: 'To Do Task 2'),
        TaskTile(title: 'To Do Task 3'),
      ],
    );
  }
}
