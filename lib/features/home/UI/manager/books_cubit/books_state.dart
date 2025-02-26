import 'package:books_app/features/home/data/models/books_model.dart';

abstract class BooksState {}

class BooksInitialState extends BooksState {}

class BooksLoadingState extends BooksState {}

class BooksSuccessState extends BooksState {
  final List<BooksModel> books;

  BooksSuccessState({required this.books});
}

class BooksErrorState extends BooksState {
  final String error;

  BooksErrorState({required this.error});
}
