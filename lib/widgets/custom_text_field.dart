import 'package:flutter/material.dart';
import 'package:simple_notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,this.maxLines=1});
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
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