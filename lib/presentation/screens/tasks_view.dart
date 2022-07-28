import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/Task.dart';
import 'package:flutter_todoey/presentation/widgets/task_tile.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_app_bar.dart';

class TasksView extends StatefulWidget {
  const TasksView(
      {Key? key, required this.tasks, required this.checkboxCallback})
      : super(key: key);

  final List<Task> tasks;
  final Function checkboxCallback;

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
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
                itemCount: widget.tasks.length,
                itemBuilder: ((context, index) {
                  return TaskTile(
                    index: index,
                    title: widget.tasks[index].name,
                    isChecked: widget.tasks[index].isDone,
                    checkboxCallback: widget.checkboxCallback,
                  );
                }),
              )),
        )
      ],
    );
  }
}
