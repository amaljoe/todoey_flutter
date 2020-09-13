import 'package:flutter/cupertino.dart';

class Task {
  String taskName;
  bool isFinished;

  Task({@required this.taskName, this.isFinished = false});

  void toggleFinish() {
    isFinished = !isFinished;
  }
}
