import 'package:blookyapp/constants.dart';
import 'package:blookyapp/core/utils/assets.dart';
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
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AssetsData.test)),
              ),
            ),
          ),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }
}
