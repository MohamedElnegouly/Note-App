import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/Views/Notes_view.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();
  //create hive box (collection) and its name
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Playpen Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
