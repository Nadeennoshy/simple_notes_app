import 'package:flutter/material.dart';
import 'package:simple_notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width,45),
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0), // Set the border radius
    ),
        // shape: 
      ),
      onPressed: (){

      }, 
      child: const Text('Add',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),));
  }
}