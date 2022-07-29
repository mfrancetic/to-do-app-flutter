import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/screens/add_task_screen.dart';
import 'package:flutter_todoey/presentation/screens/tasks_view.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: (() {
            showModalBottomSheet(
              context: context,
              // modal will now take up the full screen (default is half of the screen)
              isScrollControlled: true,
              // builder: anonymous function, widget build function, that takes in context
              // AddTaskScreen will now sit just above the keyboard, with a padding
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const AddTaskScreen(),
                ),
              ),
            );
          }),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: const TasksView(),
    );
  }
}
