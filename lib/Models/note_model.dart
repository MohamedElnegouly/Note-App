import 'package:hive/hive.dart';
// name of the generated file must be right
// in the terminal run --> dart run build_runner build
part 'note_model.g.dart';

// different from class to another
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  //Uniqe per class
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
