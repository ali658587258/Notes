import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/notes_cubit.dart';
import 'package:notes/components/floating_button.dart';
import 'package:notes/components/notes_card.dart';

class NotesScreen extends StatefulWidget {

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit,NotesState>(
      builder: (context,state){
        var cubit = NotesCubit.get(context);
        return Scaffold(
          backgroundColor: Color(0xff272d35),
          floatingActionButton: FloatingButton(),
          appBar: AppBar(
            title: Text('Notes',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            actions: [
              Icon(Icons.search_rounded)
            ],
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: cubit.myNotes.length,
                itemBuilder: (context, index){
                return NotesCard(notes: cubit.myNotes[index],);
                }
            ),
          ),
        );

      },
        listener: (context, state) {

    }
    );
  }
}
