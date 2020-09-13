import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'file:///C:/Users/amalj/AndroidStudioProjects/flutter_apps/todoey_flutter/lib/screens/add_task_screen.dart';

import 'components/tasks_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
