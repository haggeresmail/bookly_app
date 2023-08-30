import 'package:blookyapp/core/widgets/customerrorwidget.dart';
import 'package:blookyapp/core/widgets/customloadingindicator.dart';
import 'package:blookyapp/features/home/presentation/manger/newsetCubit/newset_books_cubit.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(bookModel: state.books[index]),
        );
      },
   
    );
        }else if((state is NewsetBooksSuccess) )
        {
              return const CustomErrorWidegt(errMessage:"sorry");
        }
        else {
          return const CustomLoadingIndicator();
        }
  }
    );
  }
    
  }

