import 'package:flutter/material.dart';
import 'package:simple_notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,required this.hintText,this.maxLines=1,this.onSaved,this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
         if(value?.isEmpty??true){
          return 'Field is required';
         }else{
          return null;
         }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          borderColor: kPrimaryColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color borderColor=Colors.white}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: borderColor,
        )
      );
  }
}