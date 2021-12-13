import 'dart:convert';

import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:flutter/services.dart';

class LocalStorageService {

  Future<List<FitnessTest>> getFitnessTestList() async {
    final jsonText = await rootBundle.loadString("assets/raws/fitness_test.json");
    final jsonResultMap = jsonDecode(jsonText);
    final resultList = jsonResultMap['tests'];
    List<FitnessTest> fitnessTestList = (resultList as List).map((item) => FitnessTest.fromJson(item)).toList();
    return fitnessTestList;
  }

  /// Singleton instance
  LocalStorageService._privateConstructor();
  static final LocalStorageService _instance = LocalStorageService._privateConstructor();
  factory LocalStorageService() => _instance;
}