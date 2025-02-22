import 'package:flutter/material.dart';
import 'package:simple_notes_app/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        CustomAppBarIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
