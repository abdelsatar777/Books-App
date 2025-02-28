import 'package:books_app/core/resources/app_assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'book_card.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> _images =
      List.generate(10, (index) => AppAssets.defaultImage);

  CustomCarousel({super.key}); // استبدل بالصور الفعلية

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _images.length,
      options: CarouselOptions(
        height: 400,
        // ارتفاع العنصر
        enlargeCenterPage: true,
        // تكبير العنصر في المنتصف
        viewportFraction: 0.3,
        // نسبة عرض العنصر
        enableInfiniteScroll: true,
        // تمرير لا نهائي
        autoPlay: true, // تعطيل التشغيل التلقائي
      ),
      itemBuilder: (context, index, realIndex) {
        return BookCard(imgId: _images[index]);
      },
    );
  }
}
