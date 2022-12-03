//pricing page; free, basic, premium, enterprise, monthly, yearly
// appbar is from navigation.dart myAppBar
import 'package:flutter/material.dart';
import '../navigation.dart';
import '../user.dart';
import '../utils/widgets.dart';

class PricingPage extends StatefulWidget {
  final String selected;

  const PricingPage({super.key, required this.selected});

  @override
  // ignore: no_logic_in_create_state
  State<PricingPage> createState() => _PricingPageState(selected: '');
}

class _PricingPageState extends State<PricingPage> {
  String selected;

  @override
  _PricingPageState({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Pricing", user.signedIn, context),
      body: Center(
        child: columnScrollable(
          [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //inkwell with child as pricingbox and ontap calling setstate to change selected to current title
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = "free";
                    });
                  },
                  child: pricingBox(
                      selected, "free", pricing.free, pricing.freeDescription),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = "basic";
                    });
                  },
                  child: pricingBox(selected, "basic", pricing.basic,
                      pricing.basicDescription),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = "premium";
                    });
                  },
                  child: pricingBox(selected, "premium", pricing.premium,
                      pricing.premiumDescription),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = "enterprise";
                    });
                  },
                  child: pricingBox(selected, "enterprise", pricing.enterprise,
                      pricing.enterpriseDescription),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget pricingBox(
    String selected, String title, double price, String description) {
  return Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      color: selected == title ? Colors.grey : Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          price.toString(),
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
}

//class with pricing info; free, basic, premium, enterprise, monthly, yearly

class Pricing {
  final double free;
  final String freeDescription;
  final double basic;
  final String basicDescription;
  final double premium;
  final String premiumDescription;
  final double enterprise;
  final String enterpriseDescription;

  Pricing({
    required this.free,
    required this.freeDescription,
    required this.basic,
    required this.basicDescription,
    required this.premium,
    required this.premiumDescription,
    required this.enterprise,
    required this.enterpriseDescription,
  });
}

//template pricing
Pricing pricing = Pricing(
  free: 0.00,
  freeDescription: 'Free',
  basic: 9.99,
  basicDescription: 'Basic',
  premium: 19.99,
  premiumDescription: 'Premium',
  enterprise: 29.99,
  enterpriseDescription: 'Enterprise',
);
