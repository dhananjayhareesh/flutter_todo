import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference to box

  final _myBox = Hive.box('mybox');

  // run this method when 1st opening the app
  void createInitialData() {
    toDoList = [
      ["Let's get started", false],
      ["Sample Text", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
