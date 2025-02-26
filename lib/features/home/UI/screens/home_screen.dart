import 'package:books_app/core/resources/app_text_style.dart';
import 'package:books_app/features/home/UI/screens/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "BookLY",
          style: AppTextStyle.AppBar_Text_N_S20_LS2(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 30),
          ),
        ],
      ),
      body: HomeBody(),
    );
  }
}
