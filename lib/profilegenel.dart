import 'package:elifbesler_not/notes.dart';
import 'package:elifbesler_not/todolist.dart';
import 'package:flutter/material.dart';

class ProfilGenel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/3,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.pratikbilgisi.com/upload/stblog/1/23/22/2322large.jpg')
            ),
            Positioned(
              bottom:-60.0,
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor:Colors.white,
                    backgroundImage: NetworkImage('https://i.redd.it/w6zqbocbj0321.jpg')
                ),),
          ],
        ),
        SizedBox(height: 60,),
        ListTile(
          title: Center(child: Text('Elif Besler')),
          subtitle: Center(child: Text('52 Notes, 1 ToDo List')),
        ),
        SizedBox(height: 40),
        FlatButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Notes()),
          ),
          icon: Icon(Icons.note),
            height: 120,
            minWidth: 200,
          label: Text('NOTES',
          style: TextStyle(color:Colors.white, fontSize: 25),
          ),
          color: Colors.blueAccent,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
        ),
        SizedBox(height: 40),
        FlatButton.icon(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ToDoList()),
            ),
            icon: Icon(Icons.note),
            height: 120,
            minWidth: 200,
            label: Text('TO DO LIST',
              style: TextStyle(color:Colors.white, fontSize: 25),
            ),
            color: Colors.blueAccent,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
        ),
      ],
    );

  }
}