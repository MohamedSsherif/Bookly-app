import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks(
      {required String category});
}