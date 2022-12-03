//sign in page; sign in, sign up, forgot password, sign in with google, sign in with facebook, sign in with apple, etc.
// appbar is from navigation.dart myAppBar

import 'package:flutter/material.dart';
import '../navigation.dart';
import '../user.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Sign In', user.signedIn, context),
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
          const Text(
            'Sign In',
            style: TextStyle(fontSize: 20),
          ),
          //buttons
          const SizedBox(height: 20),
          buttons(),
        ],
      ),
    );
  }
}

//text field for email, password
//sign in button
//google,facebook,apple sign in buttons
//sign up button
//forgot password button

Column buttons() {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {},
        child: const Text('Sign In'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Sign In with Google'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Sign In with Facebook'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Sign In with Apple'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Sign Up'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Forgot Password'),
      ),
    ],
  );
}
