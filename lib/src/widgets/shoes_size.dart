import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoes_model.dart';
import 'package:shoes_app/src/pages/shoes_description_page.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool fullScreen;

  const ShoesSizePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.fullScreen == false) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ShoesDescriptionPage()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 5.0 : 30.0,
          vertical: (this.fullScreen) ? 0 : 5,
        ),
        child: Container(
          height: (this.fullScreen) ? 450 : 420,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: (this.fullScreen)
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
                : BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              //Shadow Shoe
              _ShadowShoe(),

              //Size Shoe
              if (!this.fullScreen) _ShoeSize(),
            ],
          ),
        ),
      ),
    );
  }
}

// ======ShadowShoe======
class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shoesModel = Provider.of<ShoesModel>(context);

    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          //
          Positioned(
            bottom: 20,
            right: 0,
            child: _Shadow(),
          ),
          //
          Image(
            image: AssetImage(shoesModel.assetImage),
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
    //provider
    final shoesModel = Provider.of<ShoesModel>(context);

    return GestureDetector(
      onTap: () {
        final shoesModel = Provider.of<ShoesModel>(context, listen: false);

        shoesModel.size = this.size;
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: this.size == shoesModel.size ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            if (this.size == shoesModel.size)
              BoxShadow(
                color: Color(0xffF1A23A),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
          ],
        ),
        child: Center(
          child: Text(
            '${size.toString().replaceAll(".0", "")}',
            style: TextStyle(
                color: this.size == shoesModel.size
                    ? Colors.white
                    : Color(0xffF1A23A),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

//=========================================
