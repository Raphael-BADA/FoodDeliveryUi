import 'package:flutter/material.dart';
import 'package:mobile/const.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({required this.category, super.key});
  String category;
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                mainColor,
                Colors.orangeAccent,
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ),
        SizedBox(
          width: 7,
        ),
      ],
    );
  }
}
