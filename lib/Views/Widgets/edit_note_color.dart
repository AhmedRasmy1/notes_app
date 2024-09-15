import 'package:flutter/cupertino.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/color_item.dart';
import 'package:notes_app/Views/Widgets/constants.dart';

class SelectedEditNoteColor extends StatefulWidget {
  const SelectedEditNoteColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<SelectedEditNoteColor> createState() => _SelectedEditNoteColorState();
}

class _SelectedEditNoteColorState extends State<SelectedEditNoteColor> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex =
        kColor.indexWhere((color) => color.value == widget.note.color);

    super.initState();
  }

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
              widget.note.color = kColor[index].value;
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
