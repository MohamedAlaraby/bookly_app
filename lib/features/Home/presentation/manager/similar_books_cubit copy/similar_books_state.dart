part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoadingState extends SimilarBooksState {}

final class SimilarBooksLoadedState extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksLoadedState({required this.books});
}

final class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailureState({required this.errMessage});
}
