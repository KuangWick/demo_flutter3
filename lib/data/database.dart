import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {

  List toDoList = [];

  final _myDb = Hive.box('mybox');


  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    toDoList = _myDb.get("TODOLIST");
  }

  void updateDataBase() {
    _myDb.put("TODOLIST", toDoList);
  }

}