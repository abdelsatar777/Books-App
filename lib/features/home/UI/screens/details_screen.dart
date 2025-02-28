import 'package:books_app/features/home/UI/screens/widgets/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String id;

  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.shopping_cart_outlined, size: 30),
          )
        ],
      ),
      body: DetailsBody(id: id),
    );
  }
}
