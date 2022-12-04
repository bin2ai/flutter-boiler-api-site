//tutorial page; youtube link, github link, swagger api link, api docs link
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import 'package:flutter_boiler_api_site/utils/widgets.dart';
import '../navigation.dart';
import '../user.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Tutorial', user.signedIn, context),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: columnScrollable(
        const [
          SizedBox(height: 20),
          Text(
            Tutorial.youtube,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Tutorial.github,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Tutorial.swagger,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Tutorial.docs,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class Tutorial {
  static const youtube = 'Youtube';
  static const github = 'Github';
  static const swagger = 'Swagger';
  static const docs = 'Docs';
}
