import 'package:blookyapp/core/errors/failuers.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetechNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetechFeaturedBooks();
    Future<Either<Failure, List<BookModel>>> fetechSimilarBooks({required String category});
}
