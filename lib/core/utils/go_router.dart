import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
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
        return const DetailsView();
      },
    ),
    GoRoute(
      path: kSearchViewName,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
  ],
);
