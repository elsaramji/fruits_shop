// core/models/users.dart

import 'package:firebase_auth/firebase_auth.dart';

class Users {
  final String? name;
  final String email;
  final String uid;

  Users({required this.name, required this.email, required this.uid});

  factory Users.fromFirebase(User user) {
    return Users(
      name: user.displayName,
      email: user.email!,
      uid: user.uid,
    );
  }
}
