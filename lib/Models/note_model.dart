import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String titel;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel(
      {required this.titel,
      required this.subtitle,
      required this.date,
      required this.color});
}
