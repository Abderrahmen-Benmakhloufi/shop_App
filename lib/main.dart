import 'package:flutter/material.dart';
import 'themes-appbar.dart';
import 'homebody.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // لإخفاء شريط الديباج
      theme: themes(),
      darkTheme: dark(),
      home: Scaffold(
        appBar: homeappbar(context),
        body: Homebody(),
        backgroundColor: Color(0xFF0A122A),
      ),
    );
  }
}
