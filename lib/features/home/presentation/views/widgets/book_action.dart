import 'package:blookyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
          Expanded(child: CustomButton(backgroundColor: Colors.white,
          textcolor: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16)),text: "19.99€",
          ),
          ),
           Expanded(child: CustomButton(backgroundColor: Color.fromARGB(255, 220, 79, 13),
          textcolor: Colors.black,
          fontSize: 16,
          borderRadius: BorderRadius.only(topRight: Radius.circular(16),
          bottomRight: Radius.circular(16)),text: "Free Preview"
          ),
          ),
        ],
      ),
    );
  }
}