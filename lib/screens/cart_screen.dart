import 'package:flutter/material.dart';

import '../components/components.dart';
import '../const.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        child: Column(
          children: [
            //APP BAR
            //APP BAR
            //APP BAR
            Container(
              height: height * 0.15,
              child: SafeArea(
                child: Center(
                  child: ListTile(
                      leading: InkWell(
                        onTap: Navigator.of(context).pop,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      title: Center(
                          child: Text(
                        'Your Cart',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      trailing: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => CartScreen()),
                          // );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ),
            //CartItems
            //CartItems
            //CartItems
            Container(
              height: height * 0.75,
              child: Column(
                children: [
                  CartItems(
                      category: 'Vegan',
                      name: 'Bow',
                      price: '3500',
                      imagePath: 'assets/images/bow.jpeg'),
                  SizedBox(
                    height: 10,
                  ),
                  CartItems(
                      category: 'JunkFood',
                      name: 'BigCheese',
                      price: '2500',
                      imagePath: 'assets/images/bigchess.jpeg'),
                  SizedBox(
                    height: 10,
                  ),
                  CartItems(
                      category: 'Chinese',
                      name: 'Cheesy',
                      price: '4000',
                      imagePath: 'assets/images/cheesy.jpeg'),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            //CHECK OUT
            //CHECK OUT
            //CHECK OUT
            Container(
              height: height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Price'),
                            Text(
                              'Xof 10 000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: mainColor,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            width: width * 0.4,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                child: Text(
                                  'Check Out',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
