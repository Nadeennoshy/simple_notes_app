import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.backgroundColor,required this.isActive});
  final Color backgroundColor;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive==true? Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
        radius: 36,
        backgroundColor: backgroundColor,
      ),
      const Icon(Icons.check,size: 30,color: Colors.green,),
      ],
    ):CircleAvatar(
      radius: 36,
      backgroundColor: backgroundColor,);
  }
}