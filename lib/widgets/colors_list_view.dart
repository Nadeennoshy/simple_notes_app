import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_notes_app/constants.dart';
import 'package:simple_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:simple_notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color =
                        kColors[index];

                    setState(() {});
                  },
                  child: ColorItem(
                      isActive: currentIndex == index ? true : false,
                      backgroundColor: kColors[index])),
            );
          }),
    );
  }
}
