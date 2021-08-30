import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy rice')
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int count() {
    return tasks.length;
  }
  void add(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }
}