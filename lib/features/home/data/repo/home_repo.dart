import 'package:books_app/features/home/data/models/books_model.dart';
import 'package:books_app/features/home/data/models/details_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BooksModel>>> fetchAllBook();

  Future<Either<String, List<BooksModel>>> fetchPaidBook();

  Future<Either<String, DetailsModel>> DetailsBook(String id);
}
