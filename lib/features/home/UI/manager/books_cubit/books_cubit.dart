import 'package:books_app/features/home/UI/manager/books_cubit/books_state.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksCubit extends Cubit<BooksState> {
  HomeRepo homeRepo;

  BooksCubit(this.homeRepo) : super(BooksInitialState());

  getBooks() async {
    emit(BooksLoadingState());
    var value = await homeRepo.fetchAllBook();
    value.fold((error) {
      emit(BooksErrorState(error: error));
    }, (books) {
      emit(BooksSuccessState(books: books));
    });
  }
}
