import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elifbesler_not/newtodo.dart';

class ToDoList extends StatefulWidget{
  genel createState() => genel();
}

class genel extends State<ToDoList>{
  Widget _buildTask(int index){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:25.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Task Title'),
            subtitle: Text('Feb 20, 2021 * High'),
            trailing: Checkbox(
              onChanged: (value) {
                print(value);
              },
              activeColor: Colors.blue,
              value: false,
            ),
          ),
          Divider(),
        ],
      )

    );

}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical:80.0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('My Tasks',
                style: TextStyle(
                  color:Colors.black,
                  fontSize:40.0,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(height:10.0),
                Text('1 of 10',
                style:TextStyle(
                  color:Colors.grey,
                  fontSize:20.0,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
            );
          }
          return _buildTask(index);
        },
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> NewToDo())
          );
        },
        child:Icon(Icons.add),
      ),
    );
  }
}

