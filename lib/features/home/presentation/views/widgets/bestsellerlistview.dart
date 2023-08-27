import 'package:blookyapp/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
    //   builder: (context, state) {
    //     if (state is NewsetBooksSuccess) {
          return ListView.builder(
         
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount:10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                 
                ),
              );
            },
          );
        
    
  }
}