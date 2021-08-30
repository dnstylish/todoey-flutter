import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> onChanged;

  TaskTile({ required this.isChecked, required this.taskTitle, required this.onChanged });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(taskTitle),
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        )),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  final bool checkBoxState;
  final ValueChanged<bool?>? onChanged;

  TaskCheckBox({ required this.checkBoxState, required this.onChanged });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: onChanged,
    );
  }
}