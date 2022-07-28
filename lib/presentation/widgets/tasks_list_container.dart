import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_list.dart';

class TasksListContainer extends StatelessWidget {
  const TasksListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: const TasksList());
  }
}
