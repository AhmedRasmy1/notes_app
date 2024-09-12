import 'package:flutter/material.dart';
import 'package:notes_app/Views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Notes App",
        home: const NotesView(),
        theme: ThemeData.dark());
  }
}
