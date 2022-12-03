//settings page; marketing preferences, notifications, privacy, terms, logout
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import '../navigation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Settings', context),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            settings.marketingPreferences,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            settings.notifications,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            settings.privacy,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            settings.terms,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            settings.logout,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

//class with settings info; marketing preferences, notifications, privacy, terms, logout

class Settings {
  const Settings({
    required this.marketingPreferences,
    required this.notifications,
    required this.privacy,
    required this.terms,
    required this.logout,
  });

  final String marketingPreferences;
  final String notifications;
  final String privacy;
  final String terms;
  final String logout;
}

//template settings
Settings settings = const Settings(
  marketingPreferences: 'Marketing Preferences',
  notifications: 'Notifications',
  privacy: 'Privacy',
  terms: 'Terms',
  logout: 'Logout',
);
