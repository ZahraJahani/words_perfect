import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:words_perfect/appbar.dart';
import 'package:words_perfect/models/word.dart';
import 'package:words_perfect/models/type_adapter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Box<VocabularyItem> vocabularyBox;
  @override
  void initState() {
    super.initState();
    _initHive();
  }

  Future<void> _initHive() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.registerAdapter(MyDataAdapter());
    vocabularyBox = await Hive.openBox<VocabularyItem>('vocabulary_box');
    //await vocabularyBox.addAll(vocabularyList);
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(MyDataAdapter());
    await Hive.openBox<VocabularyItem>('vocabularies');
  }

  // @override
  // void dispose() {
  //   Hive.close();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ValueListenableBuilder<Box<VocabularyItem>>(
          valueListenable:
              Hive.box<VocabularyItem>('vocabularies').listenable(),
          builder: ((context, box, _) {
            return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context, index) {
                  final data = box.getAt(index);
                  return ListTile(
                    title: Text(data!.name),
                    subtitle: Text(data.definition),
                  );
                });
          })),
    );
  }
}
