import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNotestate> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) {}
}
