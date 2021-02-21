import 'package:flutter/material.dart';
import 'package:elifbesler_not/todolist.dart';

class NewToDo extends StatefulWidget{
  todo createState() => todo();
}

class todo extends State<NewToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Add a To Do Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Add item here'
              ),
            ),
            Row(
              children: <Widget> [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                      'Save',
                      style: TextStyle(color:Colors.black)
                  ),
                  color: Colors.green,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                      'Delete',
                      style: TextStyle(color:Colors.black)
                  ),
                  color:Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}