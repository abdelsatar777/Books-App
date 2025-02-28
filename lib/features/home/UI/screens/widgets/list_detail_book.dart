import 'package:books_app/features/home/data/models/books_model.dart';
import 'package:flutter/material.dart';
import 'detail_card.dart';

class ListDetailBook extends StatelessWidget {
  const ListDetailBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 40, bottom: 20),
            child: DetailCard(
              booksModel: BooksModel(
                key: "No Key",
                title: "title",
                firstPublishYear: "firstPublishYear",
                coverId: "coverId",
              ),
            ),
          );
        },
      ),
    );
  }
}
