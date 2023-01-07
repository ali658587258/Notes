import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/screens/notes_screen.dart';

import '../blocs/notes_cubit.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>NotesCubit())
      ],
      child : MaterialApp(
        home: NotesScreen(),
      )
    );
  }
}
