import 'package:books_app/core/resources/app_text_style.dart';
import 'package:books_app/features/home/UI/screens/details_screen.dart';
import 'package:books_app/features/home/data/models/books_model.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final BooksModel booksModel;

  const DetailCard({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(id: booksModel.key))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                "https://covers.openlibrary.org/b/id/${booksModel.coverId}-L.jpg",
                width: 100,
                height: 140,
                fit: BoxFit.cover),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  booksModel.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.Text_S20(context),
                ),
                SizedBox(height: 7),
                Text("(${booksModel.firstPublishYear})",
                    style: AppTextStyle.Text_S16(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
