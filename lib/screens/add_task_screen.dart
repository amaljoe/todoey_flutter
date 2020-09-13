import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks_list_model.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text;
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              onChanged: (value) {
                text = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(fillColor: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (text != null && text != '') {
                  Provider.of<TasksListModel>(context, listen: false)
                      .addTask(text);
                }
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
