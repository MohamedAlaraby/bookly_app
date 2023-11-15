import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());


    final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result =
        await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errMessage: failure.errMessage));
      },
      (result) {
        emit(NewestBooksLoaded(books: result));
      },
    );
  }
}
