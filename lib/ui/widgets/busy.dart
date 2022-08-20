import 'package:flutter/material.dart';

class Busy extends StatelessWidget {
  final String? text;

  const Busy({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: text != null ? 80.0 : 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
