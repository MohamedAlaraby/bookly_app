import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp extends SearchRepo {
  final ApiService apiService;

  SearchRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResultsBooks({
    required String searchStatement,
  }) async {
    try {
      Map<String, dynamic> result = await apiService.get(
        endPoint: "$kgetSeachedBooksEndPoint$searchStatement",
      );

      List<BookModel> books = [];

      for (var book in result["items"]) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (exception) {
      if (exception is DioException) {
        return left(ServerFailure.fromDioException(dioException: exception));
      }

      //Parsing Error.
      return left(
          ServerFailure(errMessage: "The Error message is ${exception.toString()}"));
    }
  }
}
