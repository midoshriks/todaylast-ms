import 'package:flutter/material.dart';
import 'package:today_ms/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'أذكر لله دئما'),
    Task(name: 'أذهب للعملك باكرا'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
