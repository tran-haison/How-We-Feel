import 'package:fitness_health_test_app/services/data/api/repository/api_fitness_health_repository.dart';
import 'package:fitness_health_test_app/services/data/local/local_storage_service.dart';
import 'package:fitness_health_test_app/services/data/local/shared_pref_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton<SharedPrefService>(() => SharedPrefService(preferences));
  locator.registerLazySingleton<LocalStorageService>(() => LocalStorageService());
  locator.registerLazySingleton<ApiFitnessHealthRepository>(() => ApiFitnessHealthRepositoryImpl());
}