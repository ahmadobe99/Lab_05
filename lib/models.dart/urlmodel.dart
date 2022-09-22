import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri insta_url = Uri.parse('https://www.instagram.com/?hl=en');
Future<void> Facebook_fun() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> insta_fun() async {
  if (!await launchUrl(insta_url)) {
    throw 'Could not launch $insta_url';
  }
}

class Url extends StatelessWidget {
  Url(
      {required this.myfunc,
      required this.myplatformicon,
      required this.myplatformsubtitle,
      required this.myplatformtitle});

  String? myplatformtitle;
  String? myplatformsubtitle;
  IconData? myplatformicon;
  Function()? myfunc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunc,
      child: Column(
        children: [
          ListTile(
            title: Text("$myplatformtitle"),
            subtitle: Text("$myplatformsubtitle"),
            leading: Icon(myplatformicon),
          ),
        ],
      ),
    );
  }
}
