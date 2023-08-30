import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/presentation/manger/similarbookCubit/similar_books_cubit.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key,  required this.bookmodel,});
final BookModel bookmodel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetachSimilarBooks(category:widget.bookmodel.volumeInfo.categories![0]);
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookmodel:widget.bookmodel,),
      ),
    );
  }
} 
