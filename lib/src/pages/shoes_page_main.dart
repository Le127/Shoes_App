import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              //AppBar
              CustomAppBar(
                Text(
                  "For you",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 20),

              //Shoes Size
              ShoesSizePreview(),
            ],
          ),
        ),
      ),
    );
  }
}
