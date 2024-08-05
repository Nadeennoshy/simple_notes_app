import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              height: 50,
            ),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
              },
            ),
            const SizedBox(height: 30,),
          ],
        ));
  }
}
