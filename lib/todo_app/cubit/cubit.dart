import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp2/todo_app/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../archive_task.dart';
import '../done_task.dart';
import '../new_task.dart';

class AppCubit extends Cubit<AppStates>

{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    NewTaskScreen(),
    DoneTaskScreen(),
    ArchiveTaskScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index)
  {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  Database database;
  List<Map> newTasks =[];
  List<Map> doneTasks =[];
  List<Map> archiveTasks =[];

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY , title TEXT , date TEXT , time TEXT , status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error when creating table ${error.toString()}');
        }
        );
      },
      onOpen: (database) {

        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value){
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

   insertToDatabase({
    @required String title,
    @required String time,
    @required String date,
  }) async {
    await database.transaction((txn){

      txn.rawInsert('INSERT INTO tasks(title , time , date , status) VALUES("$title" , "$time" , "$date" , "new") '
      ).then((value){
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);

      }).catchError((error){
        print('Error when inserting new record ${error.toString()}');
      });
      return null;
    });
  }

 void getDataFromDatabase(database)
  {
    newTasks =[];
    doneTasks=[];
    archiveTasks =[];

    emit(AppGetDatabaseLoadingState());
    database.rawQuery('SELECT * FROM tasks').then((value){

      value.forEach((element) {
       if(element['status'] == 'new')
         newTasks.add(element);
       else if (element['status'] == 'done')
         doneTasks.add(element);
       else archiveTasks.add(element);
      });

      emit(AppGetDatabaseState());
    });

  }

  void updateData({
  @required String status,
    @required int id,
}) async {
    database.rawUpdate(
      'UPDATE tasks SET status = ? WHERE id =?' ,
      ['$status' , id],
    ).then((value) {
      getDataFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }


  void deleteData({
    @required int id,
  }) async {
    database.rawDelete(
      'DELETE FROM tasks WHERE id=?' ,[id]
    ).then((value) {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }


  bool isBottomSheetShown = false;
  IconData  fabIcon = Icons.edit;

  void changeBottomSheetState({
  @required bool isShow,
    @required IconData icon,
})
{
  isBottomSheetShown = isShow;
  fabIcon = icon;

  emit(AppChangeBottomSheetState());
}

}