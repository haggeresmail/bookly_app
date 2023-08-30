
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          // errorWidget: (context, url, error) => const  Icon(Icons.error),
          
          errorWidget: (context, url, error) => const Center(
    child: Icon(
      Icons.error,
      color: Colors.red,
    ),
         
          //  placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
        ),
      ),
      )  );
  }
}
