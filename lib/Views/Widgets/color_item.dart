import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Views/Widgets/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 31,
            backgroundColor: color,
          );
  }
}

class PickColorItem extends StatefulWidget {
  const PickColorItem({super.key});

  @override
  State<PickColorItem> createState() => _PickColorItemState();
}

class _PickColorItemState extends State<PickColorItem> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColor.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColor[index];
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index,
              color: kColor[index],
            ),
          );
        },
      ),
    );
  }
}
