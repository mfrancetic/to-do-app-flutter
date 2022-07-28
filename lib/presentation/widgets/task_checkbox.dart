import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(
      {Key? key,
      required this.checkboxState,
      required this.toggleCheckboxState})
      : super(key: key);

  final bool checkboxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkboxState,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          toggleCheckboxState(newValue);
        });
  }
}
