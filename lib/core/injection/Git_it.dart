import 'package:fruits_shop/service/auth/auth_repo.dart';
import 'package:fruits_shop/service/firebase/auth/auth_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AuthRepo>(FirebaseAuthService());
}
