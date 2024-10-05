// core/injection/Git_it.dart
import 'dart:developer';

import 'package:fruits_shop/service/Apis/firebase/data/firestore_service.dart';
import 'package:get_it/get_it.dart';

import '../../service/firebase/auth/auth_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  try {
    getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
    getIt.registerSingleton<FirestoreService>(FirestoreService());
  } catch (e) {
    log(e.toString());
  }
}
