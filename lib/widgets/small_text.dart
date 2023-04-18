// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
 double size;
  final String text;
  final Color color;



   SmallText({Key? key, this.size = 10, required this.text, this.color = Colors.black, required FontWeight fontWeight})
   :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text( 
      text,
      style:
     TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
     
    );
  }
}