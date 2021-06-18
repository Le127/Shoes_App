import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color color;

  const Custombutton({
    required this.text,
    this.height = 30,
    this.width = 120,
    this.color = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
      ),
    );
  }
}
