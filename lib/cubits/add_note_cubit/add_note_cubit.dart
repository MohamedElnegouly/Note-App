import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/Models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNotestate> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff7D84B2);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliure(e.toString()));
    }
  }
}
