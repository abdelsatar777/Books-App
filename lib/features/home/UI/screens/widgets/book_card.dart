import 'package:flutter/material.dart';

import '../../../../../core/resources/app_assets.dart';

class BookCard extends StatelessWidget {
  final double width;
  final double height;
  final String imgId;

  const BookCard({
    super.key,
    required this.imgId,
    this.width = 200,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.network(
          "https://covers.openlibrary.org/b/id/$imgId-L.jpg",
          fit: BoxFit.cover,
          width: width,
          height: height,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              AppAssets.defaultImage, // الصورة الافتراضية
              fit: BoxFit.cover,
              width: width,
              height: height,
            );
          },
        ),
      ),
    );
  }
}
