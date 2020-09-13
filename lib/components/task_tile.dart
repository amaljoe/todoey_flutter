import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isTaskChecked;
  final String taskName;
  final Function onChanged;

  TaskTile(
      {@required this.isTaskChecked,
      @required this.taskName,
      @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            fontSize: 20,
            decoration: isTaskChecked
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isTaskChecked,
        onChanged: onChanged,
      ),
    );
  }
}
