import 'package:flutter/material.dart';
import 'package:simple_notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onPressed,this.isLoading=false});
  final void Function()? onPressed;
  final bool isLoading;

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
      onPressed: onPressed,
      child: isLoading? const SizedBox(
        width: 25,
        height: 25,
        child: CircularProgressIndicator(color: Colors.black,),
      )
      :const Text('Add',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),));
  }
}