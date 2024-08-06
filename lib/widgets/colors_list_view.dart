import 'package:flutter/widgets.dart';
import 'package:simple_notes_app/constants.dart';
import 'package:simple_notes_app/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ColorItem(backgroundColor: kColors[index]),
          );
        }),
    );
  }
}