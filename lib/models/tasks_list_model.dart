import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksListModel extends ChangeNotifier {
  List<Task> _tasks = [];

  int get tasksCount => _tasks.length;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
  }

  void toggleFinish(Task task) {
    task.toggleFinish();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
