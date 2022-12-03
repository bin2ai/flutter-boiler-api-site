import 'package:flutter/material.dart';
import 'package:flutter_boiler_api_site/pages/home.dart';

void main() {
  runApp(const MyApp(key: Key('MyApp')));
}

//my app
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page', key: Key('home')),
    );
  }
}

//my home page, this is where the magic happens
//home page has row of buttons to navigate to different pages

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//state of home page, use navigation.dart myappbar
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
