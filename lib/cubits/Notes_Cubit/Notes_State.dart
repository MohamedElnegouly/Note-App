import 'package:note_app/Models/note_model.dart';

abstract class NotesState {}

class AddNoteInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {
  final List<NoteModel> notes;
  AddNoteSuccess(this.notes);
}

class AddNoteFaliure extends NotesState {
  final String errMessage;
  AddNoteFaliure(this.errMessage);
}
