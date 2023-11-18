part of 'fetch_search_result_cubit.dart';

sealed class FetchSearchResultState extends Equatable {
  const FetchSearchResultState();

  @override
  List<Object> get props => [];
}

final class FetchSearchResultInitial extends FetchSearchResultState {}

final class FetchSearchResultLoadingState extends FetchSearchResultState {}

final class FetchSearchResultLoadedState extends FetchSearchResultState {
  final List<BookModel> books;

  const FetchSearchResultLoadedState({required this.books});
}

final class FetchSearchResultFailureState extends FetchSearchResultState {
  final String errMessage;

  const FetchSearchResultFailureState({required this.errMessage});
}