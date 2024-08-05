import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_app_bar.dart';
import 'package:simple_notes_app/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,left: 16.0,right: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.check, onPressed: (){}),
          const SizedBox(height: 20,),
          CustomTextFormField(
            onSaved: (value){

            },
            hintText: 'title'),
          const SizedBox(height: 10,),
          CustomTextFormField(
            onSaved: (value){

            },
            hintText: 'content',maxLines: 5,),
        ],
      ),
    );
  }
}