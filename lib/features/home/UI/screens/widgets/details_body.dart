import 'package:books_app/core/resources/app_assets.dart';
import 'package:books_app/core/resources/app_colors.dart';
import 'package:books_app/features/home/UI/manager/details_books_cubit/details_cubit.dart';
import 'package:books_app/features/home/UI/manager/details_books_cubit/details_state.dart';
import 'package:books_app/features/home/UI/screens/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/resources/app_text_style.dart';

class DetailsBody extends StatefulWidget {
  final String id;

  const DetailsBody({super.key, required this.id});

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  Future<void> _launchURL({required String id}) async {
    final String url = "https://openlibrary.org$id";
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw "No Find URL : $url";
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<DetailsCubit>().getDetails(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is DetailsSuccessState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookCard(imgId: state.details.covers),
              SizedBox(height: 20),
              Text(
                state.details.title,
                textAlign: TextAlign.center,
                style: AppTextStyle.Text_S30(
                  context,
                ),
              ),
              Text(
                state.details.subtitle,
                textAlign: TextAlign.center,
                style: AppTextStyle.Text_S20(
                  context,
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  SizedBox(width: 5),
                  // ضبط المسافة بين الأيقونة والنص
                  Text(state.details.latestRevision,
                      style: AppTextStyle.Text_S16(context)),
                  SizedBox(width: 10),
                  Text(
                    "(${state.details.created.substring(0, 4)})",
                    style: AppTextStyle.Text_S16(context),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _launchURL(id: widget.id),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.containerColor,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                ),
                child: Text(
                  "Free Preview",
                  style: AppTextStyle.Text_S20(
                    context,
                  ),
                ),
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
                            imgId: AppAssets.defaultImage,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        } else if (state is DetailsErrorState) {
          return Center(child: Text("Error: ${state.error}"));
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        }
      },
    );
  }
}
