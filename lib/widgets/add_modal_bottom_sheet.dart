import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_text_field.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomTextField(hintText: 'Title',),
          SizedBox(height: 20,),
          CustomTextField(hintText: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}