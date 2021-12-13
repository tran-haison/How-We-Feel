import 'package:dio/dio.dart';
import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:logger/logger.dart';

abstract class ApiBaseRepository {

  Dio get dio => Dio();

  /// Generic API call
  Future<RetrofitResponse<T>> safeApiCall<T>(Future<RetrofitResponse<T>> call) async {
    try {
      return call;
    } on Exception catch(e) {
      logger.e(e.toString());
      return RetrofitResponse.error(e.toString());
    }
  }
}