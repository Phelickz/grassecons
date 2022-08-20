// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grass_econs/app/responsiveness/res.dart';
import 'package:grass_econs/app/responsiveness/size.dart';
import 'package:grass_econs/app/utils/theme.dart';

class RowItemsWidget extends StatelessWidget {
  final Color? color;
  final Widget icon;
  final String text;
  final Color? textColor;
  final GestureTapCallback? onTap;
  const RowItemsWidget(
      {Key? key,
      this.color,
      required this.icon,
      required this.text,
      this.onTap,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 120,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const Spacer(),
              Text(
                text,
                style: CustomThemeData.generateStyle(
                  fontSize: McGyver.textSize(context, 1.5),
                  color: textColor ?? Colors.white70,
                ),
              ),
              verticalSpaceXSmall(context)
            ],
          ),
        ),
      ),
    );
  }
}
