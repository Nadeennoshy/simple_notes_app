import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:simple_notes_app/constants.dart';
import 'package:simple_notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  List<NoteModel>? filteredNoteList;
  int color = kColors[0].value;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    filteredNoteList = notesBox.values.toList();
    emit(NotesSuccess());
  }

  searchForNote(String keyword) {
    filteredNoteList = notes!.where((s) => s.title.contains(keyword)).toList();
    emit(NotesSuccess());
  }
}
