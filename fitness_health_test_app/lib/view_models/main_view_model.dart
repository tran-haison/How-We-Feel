import 'dart:async';

import 'package:fitness_health_test_app/config/locator/locator.dart';
import 'package:fitness_health_test_app/services/data/local/local_storage_service.dart';
import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:rxdart/rxdart.dart';

class MainViewModel {

  final LocalStorageService _localStorageService = locator<LocalStorageService>();

  /// Stream to manage current page item
  final _mainPageItemController = BehaviorSubject<int>();
  Stream<int> get mainPageItemStream => _mainPageItemController.stream;
  Function(int) get setMainPageItem => _mainPageItemController.sink.add;

  void onPageItemSelected(int pageItemIndex) {
    final currentValue = _mainPageItemController.value;
    if (pageItemIndex == currentValue) {
      return;
    }
    setMainPageItem(pageItemIndex);
  }

  Future<List<FitnessTest>> getFitnessTestList() async {
    return _localStorageService.getFitnessTestList();
  }

  void dispose() {
    _mainPageItemController.close();
  }
}