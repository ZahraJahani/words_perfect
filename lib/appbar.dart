// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  // final Text title;
  // final AppBar appBar;
  // // final Color backgroundColor;
  // const BaseAppBar({
  //   Key? key,
  //   required this.appBar, required this.title,
  //   // required this.backgroundColor,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(238, 100, 255, 219),
        // Status bar brightness (optional)
        statusBarIconBrightness:
            Brightness.light, // For Android (dark icons)// For iOS (dark icons)
      ),
      backgroundColor: const Color.fromARGB(238, 100, 255, 219),
      title: const Text("words perfect"),
      centerTitle: true,
    ));
  }
}
