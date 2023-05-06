import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:words_perfect/view/bookmark_page.dart';
import 'package:words_perfect/view/search_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedindex = 0;

  List pages = [const HomePage(), const SerachPage(), const BookmarkPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 250),
        items: const <Widget>[
          FaIcon(Icons.book_outlined, size: 30),
          FaIcon(Icons.search, size: 30),
          FaIcon(Icons.bookmark_border, size: 30),
        ],
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
          //Handle button tap
        },
      ),
    );
  }
}
