import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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

              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      //Shoes Size
                      ShoesSizePreview(),

                      //Shoes Description
                      ShoesDescription(
                        title: "Nike Air Max 720",
                        description:
                            "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                    ],
                  ),
                ),
              ),

              //CartContainer
              CartContainer(monto: 180),
            ],
          ),
        ),
      ),
    );
  }
}
