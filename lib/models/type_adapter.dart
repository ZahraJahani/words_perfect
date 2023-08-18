import 'package:hive/hive.dart';
import 'package:words_perfect/models/vocabulary.dart';

class MyDataAdapter extends TypeAdapter<VocabularyItem> {
  @override
  VocabularyItem read(BinaryReader reader) {
    final name = reader.readString();
    final definition = reader.readString();
    final example = reader.readString();
    return VocabularyItem(
        definition: definition,
        example: example,
        id: 1,
        lessonNumber: 2,
        name: name);
  }

  @override
  void write(BinaryWriter writer, VocabularyItem obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.definition);
    writer.writeString(obj.example);
  }

  @override
  int get typeId => 0;
}
