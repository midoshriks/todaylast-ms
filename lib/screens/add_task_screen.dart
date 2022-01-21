// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_ms/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        // لفرد عرض زرار الاضافة
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // لفرد عرض زرار الاضافة
        children: [
          Row(
            children: [
              Icon(
                // Icons.playlist_add_check,
                Icons.playlist_add,
                color: Colors.cyanAccent[800],
                size: 40,
              ),
            ],
          ),
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[400],
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            // اخذ مهمة واضافة
            onChanged: (newtext) {
              newTaskTitle = newtext;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
              // لعرض المهمة
              // print(newTaskTitle);
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18),
            ),
            style: TextButton.styleFrom(
              // backgroundColor: Colors.teal[400],
              backgroundColor: Colors.teal[300],
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
