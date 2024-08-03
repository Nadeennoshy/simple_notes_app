import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_app_bar.dart';
import 'package:simple_notes_app/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 40,right: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search, onPressed: (){}),
          NoteItem(),
        ],
      ),
    );
  }
}