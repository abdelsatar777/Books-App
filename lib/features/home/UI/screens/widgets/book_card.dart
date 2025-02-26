import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final double width;
  final double height;
  final String img;

  const BookCard({
    super.key,
    required this.img,
    this.width = 300,
    this.height = 400,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
