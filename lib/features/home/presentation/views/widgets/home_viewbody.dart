
import 'package:blookyapp/features/home/presentation/views/widgets/customappbar.dart';
import 'package:blookyapp/features/home/presentation/views/widgets/customlistviewitem.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), CustomListViewItem()],
    );
  }
}

