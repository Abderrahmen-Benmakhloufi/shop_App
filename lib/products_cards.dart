import 'package:flutter/material.dart';
import 'package:shop_app/products.dart';
import 'package:shop_app/themes-appbar.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemindex,
    required this.products,
    required this.pressed,
  });

  final int itemindex;
  final Products products;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 190,
      child: InkWell(
        onTap: pressed,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // 1. The Background Container
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFFE7DECD),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(96, 0, 0, 0),
                    offset: Offset(10, 10),
                    blurRadius: 25,
                  ),
                ],
              ),
            ),

            // 2. The Product Image (Positioned Left)
            Positioned(
              bottom: 5,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(products.image),
                ),
              ),
            ),
            SizedBox(width: 1),

            // 3. The Content Area (Title + Divider + Price + Subtitle)
            Positioned(
              right: 15,
              top: 45, // Adjusted to sit nicely inside the beige box
              child: SizedBox(
                width:
                    screenWidth *
                    0.4, // Limits width so it doesn't hit the image
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .end, // Align text to the right for Arabic
                  children: [
                    Text(
                      products.titile,
                      style: bodystyle.copyWith(fontSize: 13),
                      textAlign: TextAlign.right,
                    ),

                    // YOUR HORIZONTAL DIVIDER
                    const Divider(
                      height: 20,
                      thickness: 1,
                      color: Color(0xFF0A122A),
                    ),

                    Text(
                      products.subtitle,
                      style: bodystyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.right,
                    ),

                    const SizedBox(height: 40),

                    // Price Tag
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBFAF8),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF0A122A),
                          width: 0.5,
                        ),
                      ),
                      child: Text(
                        '${products.price}\$ : السعر',
                        style: bodystyle.copyWith(
                          fontSize: 14,
                          color: const Color(0xFF0A122A),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
