import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/widgets/task_checkbox.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool currentCheckboxState) {
    setState(() {
      isChecked = currentCheckboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: checkboxCallback,
        ));
  }
}
