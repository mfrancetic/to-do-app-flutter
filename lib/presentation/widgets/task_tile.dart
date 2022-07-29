// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback})
      : super(key: key);

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () => longPressCallback(),
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            value: isChecked,
            activeColor: Colors.lightBlueAccent,
            onChanged: (newValue) {
              checkboxCallback(newValue);
            }));
  }
}
