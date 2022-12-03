import 'package:flutter/material.dart';
import 'pages/about.dart';
import 'pages/home.dart';
import 'pages/pricing.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';

//widget button that pushes to new page
Widget buttonPage(String text, Widget page, BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      //if the new page is the same as the old page, push and replace
      if (page.runtimeType == context.widget.runtimeType) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      } else {
        //if the new page is different than the old page, push
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    },
    child: Text(text),
  );
}

//appBar of page that contains columnPageButtons
AppBar __myAppBar(String text, List<Widget> pages, BuildContext context) {
  return AppBar(
    title: Text(text),
    actions: [
      for (var page in pages) buttonPage(page.toString(), page, context),
    ],
  );
}

//call myAppBar with routes
AppBar myAppBar(String title, bool signedInStatus, BuildContext context) {
  List<Widget> pages = [];
  pages = signedInStatus
      ? [
          const HomePage(),
          const AboutPage(),
          const PricingPage(),
          const ProfilePage(),
          const SettingsPage(),
        ]
      : [
          const HomePage(),
          const AboutPage(),
          const PricingPage(),
        ];

  return __myAppBar(
    title,
    pages,
    context,
  );
}

//class that defines the routes; home, about, settings, pricing
class Routes {
  static const String home = '/';
  static const String about = '/about';
  static const String pricing = '/pricing';
  static const String profile = '/profile';
  static const String settings = '/settings';
}

//bottom bar for social media links

Widget socialMediaLinks() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.facebook),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.abc),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.abc),
      ),
    ],
  );
}
