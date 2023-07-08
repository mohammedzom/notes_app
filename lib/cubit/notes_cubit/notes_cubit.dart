import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../consts.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? notes;
  NotesCubit() : super(NotesInitial());
  fatchAllNotes() async {
    notes = Hive.box<NoteModel>(kNotesBox).values.toList();
  }
}
