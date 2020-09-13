import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy cow'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: tasks[index].taskName,
          isTaskChecked: tasks[index].isFinished,
          onChanged: (value) {
            setState(() {
              tasks[index].toggleFinish();
            });
          },
        );
      },
    );
  }
}
