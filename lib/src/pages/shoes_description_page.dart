import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

import 'package:shoes_app/src/helpers/helpers.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';
import 'package:shoes_app/src/models/shoes_model.dart';

class ShoesDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();

    return Scaffold(
      body: Column(
        children: [
          //
          Stack(
            children: [
              //
              Hero(tag: "shoes-1", child: ShoesSizePreview(fullScreen: true)),
              //
              Positioned(
                top: 50,
                left: 15,
                child: FloatingActionButton(
                  child:
                      Icon(Icons.chevron_left, color: Colors.white, size: 60),
                  elevation: 0,
                  highlightElevation: 0,
                  focusElevation: 0,
                  hoverElevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    cambiarStatusDark();
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          //
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    ShoesDescription(
                      title: "Nike Air Max 720",
                      description:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),
                    //Price and Buy Now
                    _PriceBuyNow(),

                    //Circles
                    _ColorsAndMore(),

                    //LikeCartSettings

                    _ButtonsLikeCartSet()
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

//======LikeCartSet======
class _ButtonsLikeCartSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Buttons(icon: Icons.favorite, iconColor: Colors.red.shade400),
          _Buttons(
              icon: Icons.shopping_cart, iconColor: Colors.orange.shade200),
          _Buttons(icon: Icons.settings, iconColor: Colors.black45),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const _Buttons({required this.icon, this.iconColor = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16, spreadRadius: 2)
        ],
      ),
      child: Icon(
        this.icon,
        color: this.iconColor,
      ),
    );
  }
}

//===================================

//
//======ColorsAndMore======
class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 75,
                child:
                    _ButtonColor(Color(0xffC6D642), 4, "assets/img/verde.png"),
              ),
              Positioned(
                left: 50,
                child: _ButtonColor(
                    Color(0xffFFAD29), 3, "assets/img/amarillo.png"),
              ),
              Positioned(
                left: 25,
                child:
                    _ButtonColor(Color(0xff2099F1), 2, "assets/img/azul.png"),
              ),
              _ButtonColor(Color(0xff364F56), 1, "assets/img/negro.png"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2),
          child: Custombutton(
            text: "More items",
            height: 25,
            width: 150,
            color: Colors.orange.shade300,
          ),
        ),
      ],
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String assetImage;

  const _ButtonColor(this.color, this.index, this.assetImage);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final shoesModel = Provider.of<ShoesModel>(context, listen: false);

          shoesModel.assetImage = this.assetImage;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
//===================================

//
//======PriceBuyNow======
class _PriceBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text('\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Spacer(),
          Bounce(
            delay: Duration(milliseconds: 1500),
            from: 10,
            child: Custombutton(
              text: "Buy Now",
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
//===================================
