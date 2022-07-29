import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/widgets/task_tile.dart';
import 'package:flutter_todoey/presentation/widgets/tasks_app_bar.dart';
import 'package:flutter_todoey/models/task_data.dart';

import 'package:provider/provider.dart';

class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// so we don't have to call .Provider.of(context)<TaskModel>.tasks[index]... each time
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  itemCount: taskData.taskCount,
                  itemBuilder: ((context, index) {
                    final task = taskData.tasks[index];
                    return TaskTile(
                      taskTitle: task.name,
                      isChecked: task.isDone,
                      checkboxCallback: (checkboxState) {
                        taskData.toggleTaskDone(task);
                      },
                      longPressCallback: () => taskData.deleteTask(task),
                    );
                  }),
                )),
          )
        ]);
      },
    );
  }
}
