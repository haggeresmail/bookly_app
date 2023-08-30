import 'package:blookyapp/core/utils/functions/showsnackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLunchUrl(context,String? url)async{
if (url!=null) {
     Uri uri= Uri.parse(url);
                   if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
     
  }
  else{
    showSnackbar(context, 'cannot launch $url');
  }
}
}

