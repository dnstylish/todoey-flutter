import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {

  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String name;
  final TextEditingController _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent
            ),
          ),
          TextField(
            autofocus: true,
            controller: _textEditingController,
            textAlign: TextAlign.center,
            onChanged: (value) {
              name = value;
            },
          ),
          SizedBox(
            height: 8,
          ),
          TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).add(name);
                Navigator.of(context).pop();
                _textEditingController.clear();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              child: Text('Add')
          )
        ],
      ),
    );
  }
}
