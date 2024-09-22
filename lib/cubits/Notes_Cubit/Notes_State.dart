import 'package:note_app/Models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFaliure extends NotesState {
  final String errMessage;
  NotesFaliure(this.errMessage);
}
