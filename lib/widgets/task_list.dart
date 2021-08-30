import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key
  }) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            onChanged: (bool? value) {
              setState(() {
                taskData.tasks[index].toggleDone();
              });
            },
          );
        }, itemCount: taskData.count());
      },
    );
  }
}