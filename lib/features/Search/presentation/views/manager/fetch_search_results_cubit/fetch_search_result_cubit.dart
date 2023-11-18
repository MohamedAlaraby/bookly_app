import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'fetch_search_result_state.dart';

class FetchSearchResultCubit extends Cubit<FetchSearchResultState> {
  FetchSearchResultCubit({required this.searchRepo}) : super(FetchSearchResultInitial());
   

  final SearchRepo searchRepo;
  Future<void> fetchSearchResultsBooks({required String searchStatement}) async {
    emit(FetchSearchResultLoadingState());
    var result = await searchRepo.fetchSearchResultsBooks(searchStatement: searchStatement);
    result.fold(
      (failure) {
        emit(FetchSearchResultFailureState(errMessage: failure.errMessage));
      },
      (result) {
        emit(FetchSearchResultLoadedState(books: result));
      },
    );
  }
}
