
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 import 'package:todo_list/model/task.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/screens/add_task_screen.dart';
import 'package:todo_list/widgets/tasks_list.dart';
class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 50,right: 30,left: 30,bottom: 30),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               const CircleAvatar(
                 radius: 35,
                 backgroundColor: Colors.white,
                 child: Icon(Icons.list,
                   color: Colors.lightBlueAccent,
                   size: 50,),
               ),
               const SizedBox(height: 10,),
               const Text("Todoey",
                 style: TextStyle(
                   fontSize: 50,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),),
               Text("${Provider.of<TaskData>(context).taskCount} Task",
                 style: TextStyle(
                   fontSize: 25,
                   color: Colors.grey[300],
                   fontWeight: FontWeight.bold,
                 ),),
             ],
           ),
         ),
         Expanded(
           child: Container(
             padding: const EdgeInsets.only(top: 20),
             width: double.infinity,
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 topRight: Radius.circular(20),
               ),
             ),
             child:  TasksList(),
           ),
         ),
       ],
     ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder:(context)=>AddTaskScreen(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



