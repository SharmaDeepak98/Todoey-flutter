import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/tasks.dart';

class tasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            return TaskTile(
              longPressCallback: () {
                // Provider.of<TaskData>(context, listen: false).removeTask(
                //     Provider.of<TaskData>(context, listen: false)
                //         .tasks![index]);
                taskData.removeTask(task);
              },
              TaskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                // Provider.of<TaskData>(context, listen: false).updateCheckbox(
                //     Provider.of<TaskData>(context, listen: false)
                //         .tasks![index]);
                taskData.updateCheckbox(task);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
