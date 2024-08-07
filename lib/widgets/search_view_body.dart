import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:simple_notes_app/widgets/custom_text_form_field.dart';
import 'package:simple_notes_app/widgets/search_note_listview.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? keyword;
  
  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).filteredNoteList =
        BlocProvider.of<NotesCubit>(context).notes;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 80,),
          CustomTextFormField(
            onChanged: (value) {
            keyword= value;
            BlocProvider.of<NotesCubit>(context).searchForNote(keyword ?? "");
          },
            hintText: 'Search by the keyword..'),

          const  SearchNotesListView(),
        ],
      ),
    );
  }
}