import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> result = await apiService.get(
        endPoint: kgetFeaturedBookEndPoint,
      );

      List<BookModel> books = [];

      for (var book in result["items"]) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }

      //Parsing Error.
      return left(
          ServerFailure(errMessage: "The Error Message is ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> result = await apiService.get(
        endPoint: kgetNewestBookEndPoint,
      );

      List<BookModel> books = [];

      for (var book in result["items"]) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }

      //Parsing Error.
      return left(
          ServerFailure(errMessage: "The Error message is ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      Map<String, dynamic> result = await apiService.get(
        endPoint: "$kgetSimilarBooksEndPoint$category",
      );

      List<BookModel> books = [];

      for (var book in result["items"]) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }

      //Parsing Error.
      return left(
          ServerFailure(errMessage: "The Error message is ${e.toString()}"));
    }
  }
}
