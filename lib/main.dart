import 'package:flutter/material.dart';
import 'package:furniture_store/pages/product_page.dart';
import 'package:furniture_store/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: const ProductPage(),
    );
  }
}
