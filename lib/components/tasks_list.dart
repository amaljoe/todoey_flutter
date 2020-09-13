import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/tasks_list_model.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListModel>(
      builder: (context, tasksListModel, child) {
        return ListView.builder(
          itemCount: tasksListModel.tasks.length,
          itemBuilder: (context, index) {
            final Task task = tasksListModel.tasks[index];
            return TaskTile(
              onLongPress: () {
                print('long pressed');
                tasksListModel.deleteTask(task);
              },
              taskName: task.taskName,
              isTaskChecked: task.isFinished,
              onChanged: (value) {
                tasksListModel.toggleFinish(task);
              },
            );
          },
        );
      },
    );
  }
}
