import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_elevated_button.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            maxLines: 1,
            labelText: "Title",
            hintText: "Title",
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            maxLines: 6,
            labelText: "Content",
            hintText: "Content",
          ),
          Spacer(),
          CustomElevatedButton(),
        ],
      ),
    );
  }
}
