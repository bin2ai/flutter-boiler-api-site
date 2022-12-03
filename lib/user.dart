//signed in status, user id, user name, user email, user photo url

class User {
  final bool signedIn;
  final String uid;
  final String name;
  final String email;
  final String photoUrl;

  User(
      {required this.signedIn,
      required this.uid,
      required this.name,
      required this.email,
      required this.photoUrl});
}

//template

User user = User(signedIn: false, uid: '', name: '', email: '', photoUrl: '');
