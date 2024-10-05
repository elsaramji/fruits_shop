// service/firebase/handle/database_control/add_users_tobase.dart

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/injection/Git_it.dart';
import '../../../../../core/models/users.dart';
import '../../data/firestore_service.dart';

class AddUsersTobase {
  static void addUsersTobase(
    UserCredential userCredential, {
    String? name,
  }) {
  
    return getIt<FirestoreService>().addData(
      path: 'users',
      data: Users(
        uid: userCredential.user!.uid,
        name: userCredential.user!.displayName ?? name ?? '',
        email: userCredential.user!.email ?? '',
      ).toMap(),
    );
  }
}
