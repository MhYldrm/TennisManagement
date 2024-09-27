import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFunctions{
  BuildContext context;

  CustomFunctions({required this.context});

   void callUs (String phoneNumber) async{
    final Uri url = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if(await canLaunchUrl(url)){
      await launchUrl(url);
    }else{
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "ERROR",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff460e95)),
              ),
              content:
              const Text("Someting wrong please try a few moments later"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Turn Back")),
              ],
            );
          });
    }}

     void textSmsUs (String phoneNumber) async{
      final Uri url = Uri(
        scheme: 'sms',
        path: phoneNumber,
      );
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  "ERROR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff460e95)),
                ),
                content: const Text(
                    "Someting wrong please try a few moments later"),
                actions: [
                  TextButton(
                      onPressed: () =>
                          Navigator.pop(context),
                      child: const Text("Turn Back")),
                ],
              );
            });
      }
    }

    void sendWpMessage(String phoneNumber) async{
      String url = "whatsapp://send?phone=$phoneNumber";
      launchUrl(Uri.parse(url));
    }
  }