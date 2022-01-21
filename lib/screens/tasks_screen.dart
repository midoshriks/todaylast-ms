// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:today_ms/models/task_data.dart';
// import 'package:today_ms/models/task.dart';
import 'package:today_ms/screens/add_task_screen.dart';
import 'package:today_ms/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // boutton style
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // boutton
      floatingActionButton: FloatingActionButton(
        // functioon model button
        onPressed: () {
          showModalBottomSheet(
              // لتحسين السكروب عند فتح الكيبورد
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: AddTaskScreen((newTaskTitle) {
                          // print(newTaskTitle);
                          // setState(() {
                          //   tasks.add(Task(name: newTaskTitle));
                          //   // لغلق حقل الأدخال 
                          //   Navigator.pop(context);
                          // });
                        })),
                  ));
          // لتحسين السكروب عند فتح الكيبورد
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 80,
          left: 30,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDayDO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tesks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
