// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:today_ms/models/task.dart';
import 'package:today_ms/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:today_ms/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskdata.tasks[index].isDone,
                taskTitle: taskdata.tasks[index].name,
                checkboxChange: (newValue) {
                  taskdata.updateTask(taskdata.tasks[index]);
                },
                listTileDelete: () {
                  taskdata.deleteTask(taskdata.tasks[index]);
                });
          },
        );
      },
    );
  }
}













  // old show list tasks

  //   return ListView(
  //     children: [
  //       TaskTile(
  //         taskTitle: tasks[0].name,
  //         isChecked: tasks[0].isDone,
  //       ),
  //       TaskTile(
  //         taskTitle: tasks[1].name,
  //         isChecked: tasks[1].isDone,
  //       ),
  //       TaskTile(
  //         taskTitle: tasks[2].name,
  //         isChecked: tasks[2].isDone,
  //       ),
  //       TaskTile(
  //         taskTitle: tasks[3].name,
  //         isChecked: tasks[3].isDone,
  //       ),
  //     ],
  //   );
  // }

