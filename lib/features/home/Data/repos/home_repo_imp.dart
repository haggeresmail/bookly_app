import 'package:blookyapp/core/errors/failuers.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetechBestSellerBooks() {
    // TODO: implement fetechBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetechFeaturedBooks() {
    // TODO: implement fetechFeaturedBooks
    throw UnimplementedError();
  }

}