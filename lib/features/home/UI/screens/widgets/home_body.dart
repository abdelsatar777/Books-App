import 'package:books_app/core/resources/app_text_style.dart';
import 'package:books_app/features/home/UI/screens/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';
import 'list_detail_book.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCarousel(),
          SizedBox(height: 50),
          Text(
            "Best Seller",
            style: AppTextStyle.Text_B_S30_LS2(context),
          ),
          SizedBox(height: 30),
          ListDetailBook(),
        ],
      ),
    );
  }
}
