import 'package:flutter/material.dart';

import 'package:shoes_app/src/pages/shoes_description_page.dart';
//import 'package:shoes_app/src/pages/shoes_page_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home: ShoesDescriptionPage(),
    );
  }
}
