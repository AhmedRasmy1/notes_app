import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.white.withOpacity(0.07),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0), // Apply padding around the icon
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ),
    );
  }
}
