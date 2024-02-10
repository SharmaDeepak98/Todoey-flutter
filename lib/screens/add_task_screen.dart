import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class addTaskScreen extends StatelessWidget {
  
  
  // const addTaskScreen({super.key});


  @override
  Widget build(BuildContext context) {
// final _inputController = TextEditingController();
    String? _newTaskTitle;

    return Container(
      padding: EdgeInsets.all(39),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Center(
            child: Text(
          'Add Task',
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent),
        )),
        TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 3))),
        // onSubmitted: (value){_newTaskTitle=value;}, 
        onChanged: (value){_newTaskTitle=value;},
          autofocus: true,
          enabled: true,
          // controller: _inputController,
          textAlign: TextAlign.center,
          cursorColor: Colors.lightBlueAccent,
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 19,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context,listen: false).addTask(_newTaskTitle);


          // addTaskCallback(_newTaskTitle);
          Navigator.pop(context);
          },
          child: Text(
            'Add',
            style: TextStyle(fontSize: 19),
          ),
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
              shape: BeveledRectangleBorder()),
        )
      ]),
    );
  }
}

