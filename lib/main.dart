import 'package:books_app/core/network/di.dart';
import 'package:books_app/features/home/UI/manager/books_cubit/books_cubit.dart';
import 'package:books_app/features/home/UI/manager/details_books_cubit/details_cubit.dart';
import 'package:books_app/features/home/UI/screens/home_screen.dart';
import 'package:books_app/features/home/data/repo/home_repo_impl.dart';
import 'package:books_app/features/splash/UI/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/resources/app_colors.dart';

void main() {
  setUp();
  runApp(BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  BooksCubit(getIt.get<HomeRepoImpl>())..getBooks()),
          BlocProvider(
              create: (context) => DetailsCubit(getIt.get<HomeRepoImpl>())),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "home_screen": (context) => HomeScreen(),
          },
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.primaryColor,
          ),
          home: SplashScreen(),
        ));
  }
}
