import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
