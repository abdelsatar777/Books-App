import 'package:books_app/core/resources/app_text_style.dart';
import 'package:books_app/features/home/UI/manager/books_cubit/books_cubit.dart';
import 'package:books_app/features/home/UI/manager/books_cubit/books_state.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/app_assets.dart';
import 'book_card.dart';
import 'detail_card.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksState>(
      builder: (context, state) {
        if (state is BooksSuccessState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  height: 300,
                  // ارتفاع العنصر
                  enlargeCenterPage: true,
                  // تكبير العنصر في المنتصف
                  viewportFraction: 0.5,
                  // نسبة عرض العنصر
                  enableInfiniteScroll: true,
                  // تمرير لا نهائي
                  autoPlay: true, // تعطيل التشغيل التلقائي
                ),
                itemBuilder: (context, index, realIndex) {
                  return BookCard(
                      img: state.books[index].volumeInfo!.imageLinks!.medium ??
                          AppAssets.defaultImage);
                },
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best Seller",
                      style: AppTextStyle.Text_S25(context),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.48,
                      child: Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: DetailCard(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        } else if (state is BooksErrorState) {
          return Center(child: Text("Error: ${state.error}"));
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        }
      },
    );
  }
}
