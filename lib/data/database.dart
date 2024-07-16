import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _tasksBox = Hive.box("tasksbox");

// Load test data if it is the first time running the app
  void createInitialData() {
    toDoList = [
      ["Test task 1", false],
      ["Test task 2", true]
    ];
  }

// load todo list from db
  void loadData() {
    toDoList = _tasksBox.get("TODOLIST");
  }

// Update todo list in DB
  void updateData() {
    _tasksBox.put("TODOLIST", toDoList);
  }
}
