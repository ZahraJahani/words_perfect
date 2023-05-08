import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:words_perfect/appbar.dart';
import 'package:words_perfect/colors.dart';
import 'package:words_perfect/view/bookmark_page.dart';
import 'package:words_perfect/view/bottom_navigation.dart';
import 'package:words_perfect/view/home_page.dart';
import 'package:words_perfect/view/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter()

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MainPage());
  }
}
