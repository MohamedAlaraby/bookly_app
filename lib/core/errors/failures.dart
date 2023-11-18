import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errMessage: DioExceptionType.connectionTimeout.name,
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errMessage: DioExceptionType.sendTimeout.name,
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errMessage: DioExceptionType.receiveTimeout.name,
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errMessage: DioExceptionType.badCertificate.name,
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errMessage: DioExceptionType.cancel.name,
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errMessage: DioExceptionType.connectionError.name,
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errMessage: dioException.message!,
        );
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "You passed a bad request ,please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: "Server not found ,please try later!");
    } else {
      return ServerFailure(
          errMessage: "OOPS There is undefined problem occurred ,try later!");
    }
  }
}
