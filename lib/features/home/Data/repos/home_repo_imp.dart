import 'package:blookyapp/core/errors/failuers.dart';
import 'package:blookyapp/core/utils/api_service.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetechNewestBooks() async{
   try {
  var data=  await apiService.get(
       endpoint:
           'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
           List<BookModel> books=[];
           for (var item in data["items"]) {
            books.add(BookModel.fromJson(item));
             
           }
           return right(books);
} catch (e) {
  if(e is DioError){
  return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
  // TODO
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetechFeaturedBooks() {
    // TODO: implement fetechFeaturedBooks
    throw UnimplementedError();
  }
}
