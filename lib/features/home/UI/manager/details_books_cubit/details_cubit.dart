import 'package:books_app/features/home/UI/manager/details_books_cubit/details_state.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsCubit extends Cubit<DetailsState> {
  HomeRepo homeRepo;

  DetailsCubit(this.homeRepo) : super(DetailsInitialState());

  getDetails({required String id}) async {
    emit(DetailsLoadingState());
    var value = await homeRepo.DetailsBook(id);
    value.fold((error) {
      emit(DetailsErrorState(error: error));
    }, (details) {
      emit(DetailsSuccessState(details: details));
    });
  }
}
