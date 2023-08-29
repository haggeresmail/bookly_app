import 'package:blookyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidegt extends StatelessWidget {
  const CustomErrorWidegt({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Styles.textStyle18,);
  }
}