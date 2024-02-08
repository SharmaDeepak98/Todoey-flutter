import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String TaskTitle;
  final bool? isChecked ;
  final Function checkboxCallback;
  TaskTile({required this.TaskTitle, this.isChecked,required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title: Text(
        TaskTitle,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      value: isChecked,
    onChanged: (newValue){
    checkboxCallback(newValue);
    }, 
    )

    );
  }
}
