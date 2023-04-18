// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
double size;
  final String text;
  final Color color;

  BigText(
      {Key? key,
      this.size = 20,
      required this.text,
      this.color = Colors.black,
      required FontWeight fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}