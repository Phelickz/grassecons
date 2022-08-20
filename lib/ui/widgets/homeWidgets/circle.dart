import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final Widget child;
  final IconData icon;
  final Color? color;
  const CustomCircleAvatar(
      {Key? key, required this.child, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.green,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  icon,
                  size: 15,
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.center, child: child)
        ],
      ),
    );
  }
}
