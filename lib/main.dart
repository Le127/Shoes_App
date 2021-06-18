import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoes_model.dart';

import 'package:shoes_app/src/pages/shoes_page_main.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoesModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home: ShoesPageMain(),
    );
  }
}
