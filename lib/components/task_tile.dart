import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(fontSize: 20),
      ),
      trailing: Checkbox(value: false, onChanged: (value) {}),
    );
  }
}
