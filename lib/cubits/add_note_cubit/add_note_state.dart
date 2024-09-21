abstract class AddNotestate {}

class AddNoteInitial extends AddNotestate {}

class AddNoteLoading extends AddNotestate {}

class AddNoteSuccess extends AddNotestate {}

class AddNoteFaliure extends AddNotestate {
  final String errmessage;

  AddNoteFaliure(this.errmessage);
}
