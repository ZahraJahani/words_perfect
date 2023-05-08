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

      //  IndexedStack(
      //   index: _page,
      //   children: const [BookmarkPage(), SerachPage()],
      // ),
    );
  }
}

const List<Widget> _pages = <Widget>[];

//   @override
//   Widget build(BuildContext context) {
//    final controller = Get.put(BottomNavController());
//     var iconList = <IconData>[
//       Icons.brightness_5,
//       Icons.brightness_4,
//       Icons.brightness_6,
//       Icons.brightness_7,
//     ];
//     return Scaffold(
//       extendBody: true,
//       appBar: AppBar(
//         title: Text(
//           "widget.title",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: SolidColors.backgroundColor,
//       ),
//       body: NotificationListener<ScrollNotification>(
//         onNotification: onScrollNotification,
//         child: NavigationScreen(iconList[_bottomNavIndex]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: SolidColors.backgroundColor,
//         child: const Icon(
//           Icons.brightness_3,
//           color: SolidColors.backgroundColor,
//         ),
//         onPressed: () {
// _fabAnimationController.reset();
// _borderRadiusAnimationController.reset();
// _borderRadiusAnimationController.forward();
// _fabAnimationController.forward();
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar.builder(
//         itemCount: iconList.length,
//         tabBuilder: (int index, bool isActive) {
//           final color = isActive ? SolidColors.primaryColor : Colors.white;
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 iconList[index],
//                 size: 24,
//                 color: color,
//               ),
//               const SizedBox(height: 4),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: AutoSizeText(
//                   "brightness $index",
//                   maxLines: 1,
//                   style: TextStyle(color: color),
//                   group: autoSizeGroup,
//                 ),
//               )
//             ],
//           );
//         },
//         backgroundColor: SolidColors.backgroundColor,
//         activeIndex: _bottomNavIndex,
//         splashColor: SolidColors.backgroundColor,
//         notchAndCornersAnimation: borderRadiusAnimation,
//         splashSpeedInMilliseconds: 300,
//         notchSmoothness: NotchSmoothness.defaultEdge,
//         gapLocation: GapLocation.center,
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         hideAnimationController: _hideBottomBarAnimationController,
//         shadow: BoxShadow(
//           offset: Offset(0, 1),
//           blurRadius: 12,
//           spreadRadius: 0.5,
//           color: SolidColors.backgroundColor,
//         ),
//       ),
//     );
//Scaffold(
//       body: Container(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         //params
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons:,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.verySmoothEdge,
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//         activeColor: SolidColors.primaryColor,
//         inactiveColor: SolidColors.secondaryColor, activeIndex: 0, onTap: (int ) {  },
// //        onTap: (index) => setState(() => _bottomNavIndex = index),
//         //other params
//       ),
//     );
//   }
//         screens: controller.screens,
//         decoration: NavBarDecoration(
//           colorBehindNavBar: backgroundColor,
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(25),
//             topRight: Radius.circular(25),
//           ),
//         ),
//         items: controller.navBarsItems(),
//         confineInSafeArea: true,
//         navBarHeight: Get.height / 11.2,
//         navBarStyle: NavBarStyle.style10,
//         onItemSelected: (index) {
//           controller.updateIndex(index);
//         },
//         backgroundColor: primaryColor,
//         itemAnimationProperties: const ItemAnimationProperties(
//           duration: Duration(milliseconds: 300),
//           curve: Curves.ease,
//         ),
//       ),
//     );
void main() {}
