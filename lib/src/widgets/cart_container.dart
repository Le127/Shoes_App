import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class CartContainer extends StatelessWidget {
  final double monto;
  const CartContainer({required this.monto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            "\$$monto",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Custombutton(text: "Add to cart"),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}
