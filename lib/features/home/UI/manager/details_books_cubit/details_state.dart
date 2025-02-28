import 'package:books_app/features/home/data/models/details_model.dart';

abstract class DetailsState {}

class DetailsInitialState extends DetailsState {}

class DetailsLoadingState extends DetailsState {}

class DetailsSuccessState extends DetailsState {
  final DetailsModel details;

  DetailsSuccessState({required this.details});
}

class DetailsErrorState extends DetailsState {
  final String error;

  DetailsErrorState({required this.error});
}
