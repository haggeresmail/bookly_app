import 'package:blookyapp/core/utils/styles.dart';

import 'package:blookyapp/features/home/presentation/views/widgets/book_action.dart';

import 'package:blookyapp/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/similarbook_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
slivers: [
  SliverFillRemaining(
    hasScrollBody: false,
    child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImageItem(),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling❤❤",
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BookAction(),
    const   Expanded(
         child: SizedBox(
           height: 50,
         ),
       ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
           const SizedBox(
            height: 16,
          ),
         const SimilarBookListView(),
           const SizedBox(
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

