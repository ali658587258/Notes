import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/notes.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  static NotesCubit get(context) => BlocProvider.of(context);
  List<Notes> myNotes = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController textNotesController = TextEditingController();

  addNotes(){
    myNotes.add(Notes(title: titleController.text,
        textNotes: textNotesController.text
    )
    );
    emit(NotesAddNotes());

  }

}