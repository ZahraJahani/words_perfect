// import 'dart:io';
// import 'package:hive/hive.dart';
// part 'model.g.dart';

// @HiveType(typeId: 1)
// class Word {
//   Word({required this.word, required this.meaning, required this.example});

//   @HiveField(0)
//   String word;

//   @HiveField(1)
//   String meaning;

//   @HiveField(2)
//   String example;

//   @override
//   String toString() {
//     return '';
//   }
// }

// void main() async {
//   var path = Directory.current.path;
//   Hive..init(path);

//   var box = await Hive.openBox('testBox');

//   // var person = Word(
//   //   word: 'Dave',
//   // meaning: 22,
//   // example: ['Linda', 'Marc', 'Anne'],
//   // );

//   // await box.put('dave', person);

//   print(box.get('dave')); // Dave: 22
// }
