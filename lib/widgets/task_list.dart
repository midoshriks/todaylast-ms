// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:today_ms/models/task.dart';

class TaskTile extends StatelessWidget {
  // function  تمرير المتغير
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
      ),
    );
  }
}
