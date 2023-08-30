import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/similarBooksection.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
              const  CustomBookDetailAppBar(),
                BookDetailsSection(bookModel: bookmodel,),
               const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookSection(),
               const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
