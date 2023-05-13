import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:words_perfect/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:words_perfect/view/bookmark_page.dart';
import 'package:words_perfect/view/search_page.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // int selectedindex = 0;
  int selectedIndex = 0;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.white,
        items: const <Widget>[
          FaIcon(Icons.notes, size: 30),
          FaIcon(Icons.search, size: 30),
          FaIcon(Icons.bookmark_border, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
          //Handle button tap
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

const List<Widget> _pages = <Widget>[];
void main() {}
