import 'dart:convert';

import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:flutter/services.dart';

class LocalStorageRepository {

  Future<List<FitnessTest>> getFitnessTestList() async {
    final jsonText = await rootBundle.loadString("assets/raws/fitness_test.json");
    final jsonResultMap = jsonDecode(jsonText);
    final resultList = jsonResultMap['tests'];
    List<FitnessTest> fitnessTestList = (resultList as List).map((item) => FitnessTest.fromJson(item)).toList();
    return fitnessTestList;
  }

  /// Singleton instance
  LocalStorageRepository._privateConstructor();
  static final LocalStorageRepository _instance = LocalStorageRepository._privateConstructor();
  factory LocalStorageRepository() => _instance;
}