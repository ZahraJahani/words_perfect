import 'dart:io';
import 'package:hive/hive.dart';
part 'vocabulary.g.dart';

@HiveType(typeId: 0)
class Entry extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String definition;
  @HiveField(3)
  String example;
  @HiveField(4)
  int lessonNumber;
  Entry(
      {required this.id,
      required this.name,
      required this.definition,
      required this.example,
      required this.lessonNumber});
  void addWords() async {
    final wordBox = await Hive.openBox('words');
    final List<Entry> vocabularies = [
      Entry(
        id: 1,
        name: 'Flutter',
        definition: 'A mobile development framework',
        example: 'Flutter is fun',
        lessonNumber: 2,
      ),
      Entry(
        id: 1,
        name: 'Flutter',
        definition: 'A mobile development framework',
        example: 'Flutter is fun',
        lessonNumber: 2,
      ),
    ];
    await wordBox.add(vocabularies);
    final allWords = wordBox.values.toList();
    for (var word in vocabularies) {
      wordBox.add(word);
    }
    wordBox.close();
  }
// final vocabularies = [
//   Vocabulary()
//     ..word = 'Flutter'
//     ..definition = 'A mobile development framework'
//     ..lessonNumber = 1,
//   Vocabulary()
//     ..word = 'Dart'
//     ..definition = 'The programming language used in Flutter'
//     ..lessonNumber = 1,
//   Vocabulary()
//     ..word = 'Widget'
//     ..definition = 'A basic building block of a Flutter app'
//     ..lessonNumber = 2,
// ];
}
