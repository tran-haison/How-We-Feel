import 'package:fitness_health_test_app/services/data/api/repository/api_fitness_health_repository.dart';
import 'package:fitness_health_test_app/services/data/local/local_storage_service.dart';
import 'package:fitness_health_test_app/services/data/local/shared_pref_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton<ApiFitnessHealthRepository>(ApiFitnessHealthRepositoryImpl());
  locator.registerSingleton<LocalStorageService>(LocalStorageService());

  final instance = await SharedPrefService.getInstance();
  locator.registerSingleton<SharedPrefService>(instance!);

}