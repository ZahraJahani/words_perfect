import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:words_perfect/models/vocabulary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Entry> vocabularies = [
      Entry(
        id: 2,
        name: 'Dart',
        definition: 'A mobile development language',
        example: 'Dart is fun',
        lessonNumber: 1,
      ),
      Entry(
        id: 1,
        name: 'Flutter',
        definition: 'A mobile development framework',
        example: 'Flutter is fun',
        lessonNumber: 2,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(238, 100, 255, 219),
        title: const Text("words perfect"),
      ),
      body: ListView.builder(
          itemCount: vocabularies.length,
          itemBuilder: (context, index) {
            final word = vocabularies[index];
            return ListTile(
              title: Text(word.name),
              subtitle: Text(word.definition),
              onTap: () {},
            );
          }),
    );
  }
}
