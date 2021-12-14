import 'dart:convert';

import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:flutter/services.dart';

class LocalStorageService {

  Future<List<FitnessTest>> getFitnessTestList() async {
    try {
      final jsonText = await rootBundle.loadString("assets/raws/fitness_test.json");
      final jsonResultMap = jsonDecode(jsonText);
      final resultList = jsonResultMap['tests'];
      List<FitnessTest> fitnessTestList = (resultList as List).map((item) => FitnessTest.fromJson(item)).toList();
      logger.d("LocalStorageService: getFitnessTestList: ${fitnessTestList.toString()}");
      return fitnessTestList;
    } catch(e) {
      logger.e("LocalStorageService: getFitnessTestList: ${e.toString()}");
      return [];
    }
  }

}