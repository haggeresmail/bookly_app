import 'package:blookyapp/core/widgets/customerrorwidget.dart';
import 'package:blookyapp/core/widgets/customloadingindicator.dart';
import 'package:blookyapp/features/home/presentation/manger/faeturedCubit/featured_books_cubit.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 1),
          child: CustomBookImageItem(),
        );
      },
    ),
  );
}
else if (state is FeaturedBooksFailure){
  return CustomErrorWidegt(errMessage: state.errMessage);

}
else {
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
