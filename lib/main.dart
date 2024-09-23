import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/Notes_view.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'cubits/Notes_Cubit/Notes_cubit.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();
  // to tell hive to storage NoteModel
  Hive.registerAdapter(NoteModelAdapter());
  //create hive box (collection) , <model> and its name
  await Hive.openBox<NoteModel>(kNotesBox);
  // to trigger observer
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Playpen Sans',
        ),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
