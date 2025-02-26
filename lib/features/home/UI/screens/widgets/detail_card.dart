import 'package:flutter/material.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/resources/app_text_style.dart';
import 'book_card.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BookCard(width: 190, height: 220, img: AppAssets.defaultImage),
        SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: AppTextStyle.Text_S50(context),
              ),
              Text(
                "Sub",
                style: AppTextStyle.Text_S30(context),
              ), // تحسين المسافات بين النصوص
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("00.00#", style: AppTextStyle.Text_S25(context)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      SizedBox(width: 5),
                      // ضبط المسافة بين الأيقونة والنص
                      Text("0.0", style: AppTextStyle.Text_S20(context)),
                      SizedBox(width: 5),
                      Text("(0000)", style: AppTextStyle.Text_S20(context)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
