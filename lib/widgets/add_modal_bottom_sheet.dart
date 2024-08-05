import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/add_note_form.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}