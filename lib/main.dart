import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simple_notes_app/constants.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const SimpleNotesApp());
}

class SimpleNotesApp extends StatelessWidget {
  const SimpleNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}