// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget leading;
  const HomeListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        minVerticalPadding: 0,
        // contentPadding: EdgeInsets.zero,
        title: title,
        subtitle: subtitle,
        leading: leading,
      ),
    );
  }
}
