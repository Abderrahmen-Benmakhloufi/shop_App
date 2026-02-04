import 'package:flutter/material.dart';
import 'package:shop_app/products.dart';
import 'package:shop_app/second_body.dart';
import 'package:shop_app/themes-appbar.dart';

class DetailsPage extends StatelessWidget {
  final Products product;
  const DetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7DECD),
      appBar: appbar(context),
      body: Detailsbody(product: product),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFE7DECD),
      title: Text(
        'return',
        style: bodystyle.copyWith(color: Color(0xFF0A122A)),
      ),
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xFF0A122A)),
        ),
      ),
    );
  }
}
