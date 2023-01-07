import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/blocs/notes_cubit.dart';
import 'package:notes/components/my_button.dart';
import 'package:notes/components/my_text_field.dart';
import 'package:notes/components/notes_card.dart';

class FloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var cubit = NotesCubit.get(context);
    return FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (builder){
                return Container(
                  height: 500,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.only(
                            topLeft:  Radius.circular(10.0),
                            topRight:  Radius.circular(10.0)
                        )
                    ),
                    child: Column(
                      children: [
                        MyTextField(hint: 'Title  here...', controller: cubit.titleController),
                        MyTextField(hint: 'Notes here...', controller: cubit.textNotesController),
                        MyButton(text: 'submit',
                          function: (){
                          cubit.addNotes();
                          cubit.titleController.clear();
                          cubit.textNotesController.clear();
                          Navigator.pop(context);
                          },)
                      ],
                    ),
                  ),
                );
            }
          );
        }
    );
  }
}
