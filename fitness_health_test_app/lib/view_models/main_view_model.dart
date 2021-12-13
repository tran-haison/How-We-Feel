import 'package:fitness_health_test_app/config/locator/locator.dart';
import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:fitness_health_test_app/services/data/local/local_storage_service.dart';

class MainViewModel {

  final LocalStorageService _localStorageRepo = locator<LocalStorageService>();

  Future<void> getFitnessTestList() async {
    try {
      final data = await _localStorageRepo.getFitnessTestList();
      logger.v(data.toString());
    } on Exception catch(e) {
      logger.e(e.toString());
    }
  }
}