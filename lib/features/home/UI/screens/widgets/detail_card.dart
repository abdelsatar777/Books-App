import 'package:books_app/core/resources/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/app_assets.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "details_screen"),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(AppAssets.defaultImage,
                width: 100, height: 140, fit: BoxFit.cover),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "title",
                  style: AppTextStyle.Text_S30(context),
                  softWrap: true, // يسمح بانتقال النص إلى سطر جديد
                  overflow: TextOverflow.visible, // يضمن عدم إخفاء النص
                ),
                Text("author", style: AppTextStyle.Text_S20(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('price', style: AppTextStyle.Text_S16(context)),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 18),
                        SizedBox(width: 4),
                        Text('rating', style: AppTextStyle.Text_S16(context)),
                        SizedBox(width: 4),
                        Text('reviews', style: AppTextStyle.Text_S16(context)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
