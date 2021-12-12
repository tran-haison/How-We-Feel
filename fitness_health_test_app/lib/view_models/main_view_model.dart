import 'dart:developer';

import 'package:fitness_health_test_app/services/data/local_storage/local_storage_repository.dart';

class MainViewModel {

  final LocalStorageRepository _localStorageRepo = LocalStorageRepository();

  Future<void> getFitnessTestList() async {
    try {
      final data = await _localStorageRepo.getFitnessTestList();
      log(data.toString());
    } on Exception catch(e) {
      log(e.toString());
    }
  }
}