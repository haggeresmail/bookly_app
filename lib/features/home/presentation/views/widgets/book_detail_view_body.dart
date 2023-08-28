import 'package:blookyapp/features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/similarBooksection.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  const CustomScrollView(
slivers: [
  SliverFillRemaining(
    hasScrollBody: false,
    child:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
           CustomBookDetailAppBar(),
           BookDetailsSection(),
       Expanded(
         child: SizedBox(
           height: 50,),
       ),
          SimilarBookSection(),
            SizedBox(
            height: 2,
          ),
        ],
      ),
    ) ,
  )
],
    );
    
  }
}




