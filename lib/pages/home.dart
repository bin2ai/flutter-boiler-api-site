//home page; popular, trending, new, top, bottom, favorites
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import 'package:flutter_boiler_api_site/utils/widgets.dart';
import '../navigation.dart';
import '../user.dart';
import '../utils/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Home', user.signedIn, context),
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
        [
          const SizedBox(height: 20),
          const Text(
            Home.imageTitle,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          rowScrollable(
            [
              networkImage(Home.imageUrl1),
              const SizedBox(height: 200),
              networkImage(Home.imageUrl2),
              const SizedBox(height: 200),
              networkImage(Home.imageUrl3),
              const SizedBox(height: 200),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            Home.imageDescription,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class Home {
  //image url
  static const imageUrl1 = 'https://picsum.photos/300/300';
  static const imageUrl2 = 'https://picsum.photos/300/300';
  static const imageUrl3 = 'https://picsum.photos/300/300';

  static const imageDescription = 'Sofware service description';
  static const imageTitle = 'Software Service';
}
