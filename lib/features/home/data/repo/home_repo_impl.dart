import 'package:books_app/core/network/api_service.dart';
import 'package:books_app/features/home/data/models/books_model.dart';
import 'package:books_app/features/home/data/models/details_model.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<String, List<BooksModel>>> fetchAllBook() async {
    List<BooksModel> books = [];
    try {
      var data = await apiService.get(
          endPoint: "/people/mekBot/books/want-to-read.json");
      for (var i in data["reading_log_entries"]) {
        books.add(BooksModel.fromJson(i));
      }
      return right(books);
    } catch (error) {
      return left(error.toString());
    }
  }

  @override
  Future<Either<String, List<BooksModel>>> fetchPaidBook() async {
    List<BooksModel> paidBooks = [];
    try {
      var data = await apiService.get(
          endPoint: "/people/mekBot/books/already-read.json");
      for (var i in data["reading_log_entries"]) {
        paidBooks.add(BooksModel.fromJson(i));
      }
      return right(paidBooks);
    } catch (error) {
      return left(error.toString());
    }
  }

  @override
  Future<Either<String, DetailsModel>> DetailsBook(String id) async {
    try {
      var data = await apiService.get(endPoint: "$id.json");
      var value = DetailsModel.fromJson(data);
      return right(value);
    } catch (error) {
      return left(error.toString());
    }
  }
}
