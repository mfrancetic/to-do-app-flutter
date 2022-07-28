import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        trailing: Checkbox(value: false, onChanged: ((value) => {})));
  }
}
