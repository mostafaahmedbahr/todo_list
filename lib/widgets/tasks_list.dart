import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 import 'package:todo_list/widgets/task_tile.dart';

import '../model/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
     builder: (context,taskData,child)
     {
       return ListView.builder(
         itemCount: taskData.taskCount,
         itemBuilder: (context,index)
         {
           final task = taskData.tasks[index];
           return TaskTile(
             longPressCallBack: ()
             {
               taskData.deleteTask(task);
             },
             taskTitle: task.name,
             isChecked: task.isDone,
             checkBoxCallBack :(checkBoxState )
             {
                taskData.updateTask(task);
             },

           );
         },
       );
     },
    );
  }
}


