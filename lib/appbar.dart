// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:words_perfect/colors.dart';

class BaseAppBar extends StatelessWidget {
  final Text title;
  final AppBar appBar;
  // final Color backgroundColor;
  const BaseAppBar({
    Key? key,
    required this.title,
    required this.appBar,
    // required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: title,
    ));
  }
}
