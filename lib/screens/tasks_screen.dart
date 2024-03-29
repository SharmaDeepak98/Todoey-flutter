import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import '../widgets/tasks_list.dart';
import './add_task_screen.dart';
import '../models/tasks.dart';
import 'package:provider/provider.dart';

class tasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => addTaskScreen());
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.list,
                    size: 50,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, bottom: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: tasksList(),
            ),
          )
        ],
      ),
    );
  }
}
