import 'package:blookyapp/core/utils/functions/launch_url.dart';
import 'package:blookyapp/core/widgets/custom_button.dart';
import 'package:blookyapp/features/home/Data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';


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
               onPressed: () {
                customLunchUrl(context, bookModel.volumeInfo.previewLink);
  
              },
                backgroundColor: Color.fromARGB(255, 220, 79, 13),
                textcolor: Colors.black,
                fontSize: 16,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                text:getText(bookModel)),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel){
    if(bookModel.volumeInfo.previewLink==null)
    {
      return " NOT avilabele";
    }
    else{
      return "Preview";
    }
  }
}
