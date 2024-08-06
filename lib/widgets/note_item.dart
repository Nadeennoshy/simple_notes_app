import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return EditNoteView(note: note,);
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 16,bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(note.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                  ),),
                ),
                trailing: IconButton(onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(Icons.delete_rounded,color: Colors.black,size: 40,)),
                
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}