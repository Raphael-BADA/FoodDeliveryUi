import 'package:flutter/material.dart';
import 'package:mobile/widgets/widgets.dart';

class HomeProductComponent extends StatefulWidget {
  const HomeProductComponent({super.key});

  @override
  State<HomeProductComponent> createState() => _HomeProductComponentState();
}

class _HomeProductComponentState extends State<HomeProductComponent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ProductBigImage(
          category: 'Vegan',
          name: 'Bow',
          price: '2500',
          imagePath: 'assets/images/bow.jpeg',
        ),
        SizedBox(width: 15),
        ProductBigImage(
          category: 'Vegan',
          name: 'bigchess',
          price: '4000',
          imagePath: 'assets/images/bigchess.jpeg',
        ),
        SizedBox(width: 15),
        ProductBigImage(
          category: 'Vegan',
          name: 'cheesy',
          price: '3500',
          imagePath: 'assets/images/cheesy.jpeg',
        ),
        SizedBox(width: 15),
        ProductBigImage(
          category: 'Vegan',
          name: 'garlic',
          price: '1800',
          imagePath: 'assets/images/garlic.jpeg',
        ),
        SizedBox(width: 15),
        ProductBigImage(
          category: 'Vegan',
          name: 'lamosh',
          price: '5300',
          imagePath: 'assets/images/lamosh.jpeg',
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
