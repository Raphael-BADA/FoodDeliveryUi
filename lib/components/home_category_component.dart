import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
class HomeCategoryComponent extends StatefulWidget {
  const HomeCategoryComponent({super.key});

  @override
  State<HomeCategoryComponent> createState() => _HomeCategoryComponentState();
}

class _HomeCategoryComponentState extends State<HomeCategoryComponent> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryWidget(category: 'Recommended'),
                          CategoryWidget(category: 'Vegan'),
                          CategoryWidget(category: 'JunkFood'),
                          CategoryWidget(category: 'Breakfast'),
                          CategoryWidget(category: 'FranceFood'),
                          CategoryWidget(category: 'Chinese'),
                          CategoryWidget(category: 'Burger'),
                          CategoryWidget(category: 'Drink'),
                          CategoryWidget(category: 'Beer'),
                          CategoryWidget(category: 'AfricaFood'),
                        ],
                      );
  }
}