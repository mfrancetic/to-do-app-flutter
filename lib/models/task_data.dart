import 'package:flutter/widgets.dart';
import 'package:flutter_todoey/models/task.dart';
import 'dart:collection';

class TaskData with ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

// cannot be modified
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String title) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
