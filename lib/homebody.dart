import 'package:flutter/material.dart';
import 'package:shop_app/details_page.dart';
import 'package:shop_app/products.dart';
import 'products_cards.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 55),
                  decoration: BoxDecoration(
                    color: Color(0xFFFBFAF8),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(height: 10),
                ListView.separated(
                  itemBuilder: (context, index) => ProductCard(
                    itemindex: index,
                    products: products[index],
                    pressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(product: products[index]),
                        ),
                      );
                    },
                  ),
                  separatorBuilder: (context, index) =>
                      const Divider(height: 0),
                  itemCount: products.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
