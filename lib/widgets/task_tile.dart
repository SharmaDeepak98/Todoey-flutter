import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final String? TaskTitle;
  final bool? isChecked;
  final Function? checkboxCallback;
  final Function()? longPressCallback;
  TaskTile(
      {required this.TaskTitle,
      this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          TaskTitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            checkboxCallback!(newValue);
          },
        ),
       onLongPress: longPressCallback, 
        );
  }
}
