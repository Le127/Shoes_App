import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Text text;

  const CustomAppBar(this.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            text,
            Spacer(),
            Icon(
              Icons.search,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
