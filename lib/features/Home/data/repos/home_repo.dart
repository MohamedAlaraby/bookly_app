
/*
 This repo class we create it to state the functions that this feature
 can do it has not any implementations. 
 */
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either< Failure,List<BookModel> > > fetchFeaturedBooks();
  Future<Either< Failure,List<BookModel> > >  fetchBestSellerBooks();
}



