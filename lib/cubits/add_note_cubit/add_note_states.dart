abstract class AddNoteStates {}

class AddNoteInitial extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteFailureState extends AddNoteStates {
  final String errorMessage;
  AddNoteFailureState(this.errorMessage);
}
