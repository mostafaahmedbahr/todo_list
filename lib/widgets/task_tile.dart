 import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked  ;
  final String taskTitle ;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

    TaskTile({
   this.taskTitle,
      this.isChecked=false,
      this.checkBoxCallBack,
      this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: longPressCallBack,
      title:   Text(taskTitle,
        style: TextStyle(
          decoration:isChecked? TextDecoration.lineThrough:TextDecoration.none,
        ),),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:  (newValue)
        {
          checkBoxCallBack(newValue);
        },

      ),
    );
  }


}

