//pricing page; free, basic, premium, enterprise, monthly, yearly
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import '../navigation.dart';
import '../user.dart';
import '../utils/widgets.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Pricing', user.signedIn, context),
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
            Pricing.free,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Pricing.basic,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Pricing.premium,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Pricing.enterprise,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Pricing.monthly,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            Pricing.yearly,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//class with pricing info; free, basic, premium, enterprise, monthly, yearly

class Pricing {
  static const String free = 'Free';
  static const String basic = 'Basic';
  static const String premium = 'Premium';
  static const String enterprise = 'Enterprise';
  static const String monthly = 'Monthly';
  static const String yearly = 'Yearly';
}

//template pricing
Pricing pricing = Pricing();
