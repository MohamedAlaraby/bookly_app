import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);
const kGTSectraFineFontFamily = "GT Sectra Fine Regular";
const kHomeViewName = "/home_view";
const kDetailsViewName = "/details_view";
const kSearchViewName = "/search_view";
const kPaddingH30 = EdgeInsets.symmetric(horizontal: 30);

const kgetNewestBookEndPoint =
    "volumes?Filtering=free-ebooks&Sorting=newest&q=computer science";
const kgetFeaturedBookEndPoint =
    "volumes?Filtering=free-ebooks&q=subject:programming";
const kgetSimilarBooksEndPoint =
    "volumes?Filtering=free-ebooks&Sorting=relevance&q=";

const kgetSeachedBooksEndPoint =
    "volumes?Filtering=free-ebooks&Sorting=relevance&q=";

const kTransitionDuration = Duration(
  seconds: 1,
);
