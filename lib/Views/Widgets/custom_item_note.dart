import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const EditNote()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color(0xfffecd7e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text("Flutter Tips",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    )),
              ),
              subtitle: const Text("Ahmed Hisham Rasmy and Ninja Mido Rasmy",
                  style: TextStyle(color: Color(0xff9b7239), fontSize: 18)),
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
            const Padding(
              padding: EdgeInsets.only(right: 15, top: 15),
              child: Text(
                "Sep23,2022",
                style: TextStyle(color: Color(0xff9b7239), fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
