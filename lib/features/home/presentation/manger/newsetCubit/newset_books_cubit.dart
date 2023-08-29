import 'package:bloc/bloc.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  
  Future<void> fetachNewsetBooks()async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetechFeaturedBooks();
    result.fold((failure)  {
      emit(NewsetBooksFailure(failure.errMessage)); 
    }, (books)  {
emit(NewsetBooksSuccess(books));
    });
  }
}
