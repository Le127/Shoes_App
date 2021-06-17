import 'package:flutter/material.dart';

class ShoesDescription extends StatelessWidget {
  final String title;
  final String description;

  const ShoesDescription({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10),
          Text(description,
              style:
                  TextStyle(fontSize: 15, color: Colors.blueGrey, height: 1.5)),
        ],
      ),
    );
  }
}
