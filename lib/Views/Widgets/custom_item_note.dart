import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
            context, MaterialPageRoute(builder: (context) => const EditNote()));
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    )),
              ),
              subtitle: Text(note.subtitle,
                  style:
                      const TextStyle(color: Color(0xff9b7239), fontSize: 18)),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 25,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Add your delete functionality here
                  // For example: show a confirmation dialog or delete the note from your data source
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: Text(
                note.date,
                style: const TextStyle(color: Color(0xff9b7239), fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
