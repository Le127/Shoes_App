import 'package:flutter/material.dart';

class ShoesModel with ChangeNotifier {
  String _assetImage = 'assets/img/azul.png';
  double _size = 9.0;

//Image
  String get assetImage => this._assetImage;

  set assetImage(String value) {
    this._assetImage = value;
    notifyListeners();
  }

//Size
  double get size => this._size;

  set size(double value) {
    this._size = value;
    notifyListeners();
  }
}
