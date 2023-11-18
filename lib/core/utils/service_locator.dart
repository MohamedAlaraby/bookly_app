import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/Search/data/repos/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(dio: getIt<Dio>()));
  getIt.registerSingleton<HomeRepoImp>(
      HomeRepoImp(apiService: getIt<ApiService>()));

  getIt
      .registerSingleton<SearchRepoImp>(SearchRepoImp(apiService: getIt.get<ApiService>()));
}
