import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:words_perfect/pages/bookmark_page.dart';
import 'package:words_perfect/pages/search_page.dart';
import 'pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const SerachPage(),
    const BookmarkPage()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: pages[selectedIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        // currentIndex: currentIndex,
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.white,
        // animationCurve: Curves.easeInExpo,
        animationDuration: const Duration(milliseconds: 250),
        items: const <Widget>[
          FaIcon(Icons.book_outlined, size: 30),
          FaIcon(Icons.search, size: 30),
          FaIcon(Icons.bookmark_border, size: 30),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        //Handle button tap
      ),
    );
  }
}
