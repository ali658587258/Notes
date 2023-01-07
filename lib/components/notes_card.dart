import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/notes.dart';

class NotesCard extends StatelessWidget {
  final Notes notes;

  NotesCard({required this.notes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                title: Text(notes.title,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w700),),
                subtitle: Text(notes.textNotes,style: TextStyle(color: Colors.black54,fontSize: 14)),
                trailing: IconButton(onPressed: (){},
                    icon: Icon(Icons.delete,color: Colors.black,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
