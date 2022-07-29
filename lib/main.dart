import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/screens/tasks_screen.dart';
import 'package:flutter_todoey/provider/task_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskModel())],
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
