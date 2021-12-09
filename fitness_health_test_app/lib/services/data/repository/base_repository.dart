import 'package:dio/dio.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';

abstract class BaseRepository {

  Dio get dio => Dio();

  /// Generic API call
  Future<RetrofitResponse<T>> safeApiCall<T>(Future<RetrofitResponse<T>> call) async {
    try {
      return call;
    } on Exception catch(e) {
      return RetrofitResponse.error(e.toString(), 0);
    }
  }

}