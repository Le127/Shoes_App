import 'package:flutter/material.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoesDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ShoesSizePreview(fullScreen: true),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    ShoesDescription(
                      title: "Nike Air Max 720",
                      description:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),
                    _PriceBuyNow(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text('\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Spacer(),
          Custombutton(
            text: "Buy Now",
            width: 100,
          )
        ],
      ),
    );
  }
}
