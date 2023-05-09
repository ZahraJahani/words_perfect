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
    var box;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(238, 100, 255, 219),
        title: const Text("words perfect"),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: box.length,
              itemBuilder: (BuildContext context, int index) {
                final word = box.getAt(index) as Words;
                return ListTile(
                  title: Text(word.name),
                  subtitle: Text(word.definition),
                  onTap: () {},
                );
              })),
    );
  }
}
