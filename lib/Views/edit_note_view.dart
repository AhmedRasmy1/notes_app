import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom_icon.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

String? title, content;

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomIcon(
            onPressed: () {
              widget.note.titel = title ?? widget.note.titel;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.send,
          ),
        ],
        title: const Text(
          "Edit Note",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            maxLines: 1,
            hintText: widget.note.titel,
            labelText: "Title",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            maxLines: 6,
            hintText: widget.note.subtitle,
            labelText: "Content",
          ),
        ]),
      ),
    );
  }
}
