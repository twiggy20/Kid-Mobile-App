import 'package:get_it/get_it.dart';
import 'package:mobile_app/services/auth_service.dart';
import 'package:mobile_app/services/student_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => StudentService());
}