import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/Models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNotestate> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      notesBox.add(note);
    } catch (e) {
      AddNoteFaliure(e.toString());
    }
  }
}
