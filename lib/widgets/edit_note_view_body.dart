import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/widgets/custom_app_bar.dart';
import 'package:simple_notes_app/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key,required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,left: 16.0,right: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.check,
           onPressed: (){
            widget.note.title = title??widget.note.title;
            widget.note.subTitle = subTitle??widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
           }),
          const SizedBox(height: 20,),
          CustomTextFormField(
            onChanged: (value){
              title = value;
            },
            hintText: 'title'),
          const SizedBox(height: 10,),
          CustomTextFormField(
            onChanged: (value){
              subTitle = value;
            },
            hintText: 'content',maxLines: 5,),
        ],
      ),
    );
  }
}