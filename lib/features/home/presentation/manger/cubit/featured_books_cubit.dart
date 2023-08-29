import 'package:bloc/bloc.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetachFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetechFeaturedBooks();
    result.fold((failure)  {
      emit(FeaturedBooksFailure(failure.errMessage)); 
    }, (books)  {
emit(FeaturedBooksSuccess(books));
    });
  }
}
