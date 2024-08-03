import 'package:flutter/material.dart';
import 'package:simple_notes_app/views/notes_view.dart';

void main() {
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