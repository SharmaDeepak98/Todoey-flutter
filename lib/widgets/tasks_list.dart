
import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/tasks.dart';

class tasksList extends StatefulWidget {

List<Task> tasks;
 tasksList(this.tasks);

  @override
  State<tasksList> createState() => _tasksListState();
}

class _tasksListState extends State<tasksList> {
   @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          TaskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState){
          setState((){
            widget.tasks[index].toggleDone();
          });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
