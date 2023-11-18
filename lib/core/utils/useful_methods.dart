import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

double getHeight(BuildContext context) => MediaQuery.of(context).size.height;
double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  Future<void> myLaunchUrl(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint("Error while launching the url");
    }
  }