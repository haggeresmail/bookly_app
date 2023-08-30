import 'package:blookyapp/core/widgets/custom_button.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
             
              backgroundColor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              text: "19.99€",
            ),
          ),
          Expanded(
            child: CustomButton(
               onPressed: ()async {
                Uri uri= Uri.parse(bookModel.volumeInfo.previewLink!);
                 if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
   
  }
              },
                backgroundColor: Color.fromARGB(255, 220, 79, 13),
                textcolor: Colors.black,
                fontSize: 16,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                text: "Free Preview"),
          ),
        ],
      ),
    );
  }
}
