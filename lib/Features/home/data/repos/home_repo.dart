import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>>fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>>fetchBooks();
}