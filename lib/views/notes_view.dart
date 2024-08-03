import 'package:flutter/material.dart';
import 'package:simple_notes_app/constants.dart';
import 'package:simple_notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 8.0),
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
