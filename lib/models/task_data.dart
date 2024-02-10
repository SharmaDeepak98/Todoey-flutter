import 'package:flutter/foundation.dart';
import './tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier 
{
   List<Task> _tasks = [
    // Task(name: 'buy milk '),
    // Task(name: 'buy eggs'),
    // Task(name: 'buy bread')
  ];

UnmodifiableListView<Task> get tasks {
return UnmodifiableListView(_tasks);
}

int get taskCount{
return _tasks!.length;
}

void addTask(newTaskTitle){
  final task = Task(name: newTaskTitle);
  _tasks!.add(task);
  notifyListeners();

}

void updateCheckbox(Task task){
  task.toggleDone();
  notifyListeners();
}
void removeTask(Task task){
_tasks.remove(task);
notifyListeners();
}
}