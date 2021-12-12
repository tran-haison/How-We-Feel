import 'package:fitness_health_test_app/services/data/local_storage/local_storage_repository.dart';

class MainViewModel {

  final LocalStorageRepository _localStorageRepo = LocalStorageRepository();

  Future<void> getFitnessTestList() async {
    try {
      final data = await _localStorageRepo.getFitnessTestList();
      print(data);
    } on Exception catch(e) {
      print("ERROR");
    }
  }
}