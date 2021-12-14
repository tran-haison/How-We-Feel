import 'package:fitness_health_test_app/config/locator/locator.dart';
import 'package:fitness_health_test_app/services/data/local/local_storage_service.dart';
import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';

class MainViewModel {

  final LocalStorageService _localStorageService = locator<LocalStorageService>();

  Future<List<FitnessTest>> getFitnessTestList() async {
    final fitnessTestList = await _localStorageService.getFitnessTestList();
    return fitnessTestList;
  }
}