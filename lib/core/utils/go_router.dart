import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';

import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/Home/presentation/manager/similar_books_cubit%20copy/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Search/data/repos/search_repo_imp.dart';
import 'package:bookly_app/features/Search/presentation/views/manager/fetch_search_results_cubit/fetch_search_result_cubit.dart';
import 'package:bookly_app/features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kHomeViewName,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kDetailsViewName,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<SimilarBooksCubit>(
          create: (context) => SimilarBooksCubit(
            getIt<HomeRepoImp>(),
          ),
          child: DetailsView(book: state.extra as BookModel),
        );
      },
    ),
    GoRoute(
      path: kSearchViewName,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<FetchSearchResultCubit>(
          create: (context) =>
              FetchSearchResultCubit(searchRepo: getIt<SearchRepoImp>()),
          child: const SearchView(),
        );
      },
    ),
  ],
);
