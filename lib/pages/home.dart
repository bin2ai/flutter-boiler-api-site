//home page; popular, trending, new, top, bottom, favorites
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import 'package:flutter_boiler_api_site/utils/widgets.dart';
import '../navigation.dart';
import '../user.dart';

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
        const [
          SizedBox(height: 20),
          Text(
            Home.popular,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Home.trending,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Home.recent,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Home.top,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Home.bottom,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Home.favorites,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class Home {
  static const popular = 'Popular';
  static const trending = 'Trending';
  static const recent = 'Recent';
  static const top = 'Top';
  static const bottom = 'Bottom';
  static const favorites = 'Favorites';
}
