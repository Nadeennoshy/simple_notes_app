import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NoteItem(),
        );
      }),
    );
  }
}