import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.blueAccent,
    );
  }
}

class PickColorItem extends StatelessWidget {
  const PickColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: GestureDetector(
        onTap: () {},
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ColorItem();
          },
        ),
      ),
    );
  }
}
