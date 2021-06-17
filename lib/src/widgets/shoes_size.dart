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
          _ShoeSize(),
        ],
      ),
    );
  }
}

// ======ShadowShoe======
class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _Shadow(),
          ),
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
//=========================================

//====== _ShoeSize======

class _ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ShoeSizeBox(7),
          _ShoeSizeBox(7.5),
          _ShoeSizeBox(8),
          _ShoeSizeBox(8.5),
          _ShoeSizeBox(9),
          _ShoeSizeBox(9.5)
        ],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  final double size;

  const _ShoeSizeBox(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        /*   boxShadow: [
            //  BoxShadow()
          ] */
      ),
      //child
      child: Center(
        child: Text(
          '${size.toString().replaceAll(".0", "")}',
          style: TextStyle(
              color: Color(0xffF1A23A),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//=========================================
