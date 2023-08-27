import 'package:blookyapp/constants.dart';
import 'package:blookyapp/core/utils/assets.dart';
import 'package:blookyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "harry poter and Global of fire",
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "J.k,Roweling",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
               Text(
                "199.9\$",
                style: Styles.textStyle20.copyWith(
                fontWeight:FontWeight.bold)
              ),
            ],
          )
        ],
      ),
    );
  }
}
