import 'package:blookyapp/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
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
}
