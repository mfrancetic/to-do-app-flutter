import 'package:flutter/widgets.dart';
import 'package:flutter_todoey/models/task.dart';

class TaskModel with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(String title) {
    tasks.add(Task(name: title));
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
