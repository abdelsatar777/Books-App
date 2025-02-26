import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final double width;
  final double height;
  final String img;

  const BookCard({
    super.key,
    required this.img,
    this.width = 200,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "details_screen"),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
