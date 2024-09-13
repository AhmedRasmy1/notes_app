// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.maxLines,
    required this.hintText,
    required this.labelText,
  });
  final int maxLines;
  final String hintText;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xff61fcd7)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          contentPadding: EdgeInsets.all(20)),
    );
  }
}
