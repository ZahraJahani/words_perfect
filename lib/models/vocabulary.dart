import 'package:hive/hive.dart';
part 'vocabulary.g.dart';

@HiveType(typeId: 0)
class VocabularyItem extends HiveObject {
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
  VocabularyItem(
      {required this.id,
      required this.name,
      required this.definition,
      required this.example,
      required this.lessonNumber});
  void addWords() {
    List<VocabularyItem> vocabularyList = [
      VocabularyItem(
        id: 2,
        name: 'Dart',
        definition: 'A mobile development language',
        example: 'Dart is fun',
        lessonNumber: 1,
      ),
      VocabularyItem(
        id: 1,
        name: 'Flutter',
        definition: 'A mobile development framework',
        example: 'Flutter is fun',
        lessonNumber: 2,
      ),
    ];
  }
}
