import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_search_icon.dart';
import 'package:notes_app/Views/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff60ffd9),
        shape: const StadiumBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      appBar: AppBar(
        actions: const [CustomSearchIcon()],
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
