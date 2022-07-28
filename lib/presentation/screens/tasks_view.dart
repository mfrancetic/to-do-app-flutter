import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_app_bar.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_list_container.dart';

class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TasksAppBar(),
        Expanded(child: TasksListContainer()),
      ],
    );
  }
}
