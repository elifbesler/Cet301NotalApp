import 'package:flutter/material.dart';
import 'package:elifbesler_not/notes.dart';

class NewNote extends StatefulWidget{
  note createState() => note();
}

class note extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text ('Add a Note'),
    ),
        body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField(
              decoration: InputDecoration(
                hintText: 'Note here'
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