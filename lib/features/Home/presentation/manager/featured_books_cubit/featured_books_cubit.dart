import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
      },
      (result) {
        emit(FeaturedBooksLoadedState(books: result));
      },
    );
  }
}
