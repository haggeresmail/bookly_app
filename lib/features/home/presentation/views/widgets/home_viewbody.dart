import 'package:blookyapp/core/utils/styles.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/customappbar.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/listviewbooks.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListViewItems(),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
