import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks_list_model.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksListModel>(
      create: (context) => TasksListModel(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
