import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isTaskChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            fontSize: 20,
            decoration: isTaskChecked
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: TaskCheckbox(
        isChecked: isTaskChecked,
        onChanged: (value) {
          setState(() {
            isTaskChecked = value;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;

  TaskCheckbox({this.isChecked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          onChanged(value);
        });
  }
}
