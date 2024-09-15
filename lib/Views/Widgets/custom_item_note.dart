import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Cubits/cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditNote(
                      note: note,
                    )));
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(note.titel,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    )),
              ),
              subtitle: Text(note.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18)),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 25,
                  color: Colors.black,
                ),
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: Text(
                DateFormat.yMd().format(DateTime.now()),
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
