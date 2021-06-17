import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFCF53),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          //Shadow Shoe
          _ShadowShoe(),

          //Size Shoe
        ],
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _Shadow()),
          Image(
            image: AssetImage('assets/img/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffEAA14E), blurRadius: 30),
          ],
        ),
      ),
    );
  }
}
