import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_icon.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CustomIcon(
            icon: Icons.send,
          ),
        ],
        title: const Text(
          "Edit Note",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          CustomTextField(maxLines: 1, hintText: "Title", labelText: "Title"),
          SizedBox(height: 20),
          CustomTextField(
              maxLines: 6, hintText: "Content", labelText: "Content"),
        ]),
      ),
    );
  }
}
