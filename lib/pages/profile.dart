//profile page; img, name, email, phone, address, billing, membership
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import '../navigation.dart';
import '../user.dart';
import '../utils/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Profile', user.signedIn, context),
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
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(profile.imgUrl),
          ),
          const SizedBox(height: 20),
          Text(
            profile.name,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            profile.email,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            profile.phone,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            profile.address,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            profile.billing,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            profile.membership,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//class with name, email, phone, address, billing, membership
class Profile {
  final String name;
  final String imgUrl;
  final String email;
  final String phone;
  final String address;
  final String billing;
  final String membership;

  Profile({
    required this.name,
    required this.imgUrl,
    required this.email,
    required this.phone,
    required this.address,
    required this.billing,
    required this.membership,
  });
}

//template profile class
Profile profile = Profile(
  name: 'John Doe',
  imgUrl: 'https://picsum.photos/250?image=9',
  email: 'email@email.com',
  phone: '123-456-7890',
  address: '1234 Main St, City, State, Zip',
  billing: '1234 Main St, City, State, Zip',
  membership: 'Gold',
);
