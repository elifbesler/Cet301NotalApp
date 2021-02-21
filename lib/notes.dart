import 'package:elifbesler_not/newnote.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget{
  genel createState() => genel();
}

class genel extends State<Notes>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> NewNote())
            );
              },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top:30.0,
                    bottom: 30,
                    left:13.0,
                    right: 22.0
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _NoteTitle(),
                  Container(height: 4,),
                  _NoteText()
                ],
              ),
            ),
            ),
            );
          }
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> NewNote())
          );
        },
        child:Icon(Icons.add),
      ),
    );
  }
}class _NoteTitle extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
  return Container();
  }
}

class _NoteText extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Container();
  }
}