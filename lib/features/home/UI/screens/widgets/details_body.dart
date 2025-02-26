import 'package:books_app/core/resources/app_assets.dart';
import 'package:books_app/core/resources/app_colors.dart';
import 'package:books_app/features/home/UI/screens/widgets/book_card.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/app_text_style.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({super.key});

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BookCard(img: AppAssets.defaultImage),
        SizedBox(height: 20),
        Text("Title", style: AppTextStyle.Text_S30(context)),
        Text("Name", style: AppTextStyle.Text_S20(context)),
        SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 20),
            SizedBox(width: 5),
            // ضبط المسافة بين الأيقونة والنص
            Text("0.0", style: AppTextStyle.Text_S16(context)),
            SizedBox(width: 5),
            Text("(0000)", style: AppTextStyle.Text_S16(context)),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(
                "00.00#",
                style: AppTextStyle.Text_S20(
                  context,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child:
                  Text("Free Preview", style: AppTextStyle.Text_S20(context)),
            ),
          ],
        ),
        SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "You can also like",
                style: AppTextStyle.Text_S20(context),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: (index == 0) ? 20 : 7,
                      bottom: 20,
                    ),
                    child: BookCard(
                      width: 100,
                      height: 50,
                      img: AppAssets.defaultImage,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
