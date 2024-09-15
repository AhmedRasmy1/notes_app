import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom_elevated_button.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? titlr, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      autovalidateMode: autovalidateMode,
      onChanged: () {},
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              titlr = value;
            },
            maxLines: 1,
            labelText: "Title",
            hintText: "Title",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            maxLines: 6,
            labelText: "Content",
            hintText: "Content",
          ),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomElevatedButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    _key.currentState!.save();
                    var noteModel = NoteModel(
                      titel: titlr!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          // const SizedBox(height: 20)
        ],
      ),
    );
  }
}
