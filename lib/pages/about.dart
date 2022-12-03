//about page; company name, address, phone number, email, website, social media, description, mission, vision, values, history, roadmap, etc.
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import 'package:flutter_boiler_api_site/utils/widgets.dart';
import '../navigation.dart';
import '../user.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('About', user.signedIn, context),
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
            About.companyName,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.address,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.phoneNumber,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.email,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.website,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.socialMedia,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.description,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.mission,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.vision,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.values,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.history,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            About.roadmap,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

// About page; company name, address, phone number, email, website, social media, description, mission, vision, values, history, roadmap, etc.
class About {
  static const companyName = 'Company Name';
  static const address = 'Address';
  static const phoneNumber = 'Phone Number';
  static const email = 'Email';
  static const website = 'Website';
  static const socialMedia = 'Social Media';
  static const description = 'Description';
  static const mission = 'Mission';
  static const vision = 'Vision';
  static const values = 'Values';
  static const history = 'History';
  static const roadmap = 'Roadmap';
}
