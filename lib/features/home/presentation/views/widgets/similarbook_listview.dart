import 'package:blookyapp/core/widgets/customerrorwidget.dart';
import 'package:blookyapp/core/widgets/customloadingindicator.dart';
import 'package:blookyapp/features/home/presentation/manger/similarbookCubit/similar_books_cubit.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: CustomBookImageItem(
            imageUrl:
                'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium',
          ),
        );
      },
    ),
  );
}
else  if (state is SimilarBooksFailure){
  return CustomErrorWidegt(errMessage: state.errMessage);

}
else {
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
