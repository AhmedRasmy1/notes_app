part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

// ignore: must_be_immutable
final class AddNoteFailure extends AddNoteState {
  String? errorMessage;
  AddNoteFailure({this.errorMessage});
}
