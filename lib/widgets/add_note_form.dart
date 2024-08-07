import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:simple_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:simple_notes_app/models/note_model.dart';
import 'package:simple_notes_app/widgets/colors_list_view.dart';
import 'package:simple_notes_app/widgets/custom_button.dart';
import 'package:simple_notes_app/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              hintText: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 30,
            ),
            const ColorsListView(),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      DateTime date = DateTime.now();
                      String formattedDate =
                          DateFormat('MMM d, yyyy').format(date);
                      NoteModel noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          color: Colors.blue.value,
                          date: formattedDate);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
