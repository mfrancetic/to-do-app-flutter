import 'package:flutter/widgets.dart';
import 'package:flutter_todoey/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String title) {
    tasks.add(Task(name: title));
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
