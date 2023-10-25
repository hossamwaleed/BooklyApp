import 'package:bookly_app1/Core/errors/Failures.dart';
import 'package:bookly_app1/Features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future <Either< Failure,List<BookModel>>>  fetchNewsetBooks();
  Future <Either< Failure,List<BookModel>>> fetchFeatureBooks();
}