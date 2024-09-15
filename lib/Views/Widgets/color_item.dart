import 'package:flutter/material.dart';

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
            radius: 37,
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
  List<Color> color = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.orange,
    Colors.brown,
    Colors.indigo,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: color.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index,
              color: color[index],
            ),
          );
        },
      ),
    );
  }
}
