import 'package:flutter/material.dart';
import 'package:shop_app/products.dart';
import 'package:shop_app/themes-appbar.dart';

class Detailsbody extends StatefulWidget {
  final Products product;
  const Detailsbody({super.key, required this.product});

  @override
  State<Detailsbody> createState() => _DetailsbodyState();
}

Color backgroundColor = Colors.transparent;

class _DetailsbodyState extends State<Detailsbody> {
  void changebackgroundColor(Color newcolor) {
    setState(() {
      backgroundColor = newcolor;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.width;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFBFAF8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          padding: EdgeInsets.only(top: 25),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: Column(
              children: [
                Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      height: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: backgroundColor,
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.center,
                      child: SizedBox(
                        height: screenWidth * 0.7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.product.image),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: screenheight * 0.05,
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color: Colors.grey[300],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildicon(Colors.red),
                        buildicon(Colors.green),
                        buildicon(Colors.blue),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Text(
                      widget.product.titile,
                      style: bodystyle.copyWith(color: Color(0xFF0A122A)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Text(
                      'السعر : \$${widget.product.price}',
                      style: bodystyle.copyWith(
                        color: Color.fromARGB(255, 106, 124, 82),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: Text(
              widget.product.descreption,
              style: bodystyle.copyWith(color: Color.fromARGB(190, 37, 51, 95)),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ],
    );
  }

  IconButton buildicon(Color color) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        setState(() {
          changebackgroundColor(color);
        });
      },
      icon: Icon(Icons.circle, color: color, size: 15),
    );
  }
}
