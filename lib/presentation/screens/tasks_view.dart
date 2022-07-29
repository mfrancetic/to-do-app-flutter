import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/presentation/widgets/task_tile.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_app_bar.dart';
import 'package:flutter_todoey/provider/task_model.dart';

import 'package:provider/provider.dart';

class TasksView extends StatefulWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = context.watch<TaskModel>().tasks;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TasksAppBar(),
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: ((context, index) {
                  return TaskTile(
                    index: index,
                  );
                }),
              )),
        )
      ],
    );
  }
}
