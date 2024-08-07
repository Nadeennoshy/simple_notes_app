import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:simple_notes_app/views/search_view.dart';
import 'package:simple_notes_app/widgets/custom_app_bar.dart';
import 'package:simple_notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override 
  void initState(){
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 40,right: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search, onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SearchView();
            }));
          }),
          const Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}