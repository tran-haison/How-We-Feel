import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:fitness_health_test_app/services/data/api/fitness_health_api.dart';
import 'package:fitness_health_test_app/services/data/api/response_code.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:retrofit/retrofit.dart';

import 'api_base_repository.dart';

abstract class ApiFitnessHealthRepository extends ApiBaseRepository {
  Future<RetrofitResponse<ResultUserInfo>> registerUser(SendUserRegister sendUserRegister);
  Future<RetrofitResponse<ResultUserInfo>> loginUser(SendUserLogin sendUserLogin);
  Future<RetrofitResponse<ResultUserInfo>> getUserDetail(String token);
  Future<RetrofitResponse<ResultUserInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo);
  Future<RetrofitResponse<ResultMessage>> updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword);
}

class ApiFitnessHealthRepositoryImpl extends ApiFitnessHealthRepository {

  FitnessHealthApi get _fitnessHealthApi => FitnessHealthApi(dio);

  /// Function to get retrofit response of any data type
  RetrofitResponse<T> _getRetrofitResponse<T>(HttpResponse httpResponse) {
    final data = httpResponse.data;

    // Return success after getting correct response
    int code = httpResponse.response.statusCode ?? ResponseCode.badRequest;
    if (code == ResponseCode.ok && data is T) {
      logger.d("ApiFitnessHealthRepositoryImpl: getRetrofitResponse: $code: ${data.toString()}}");
      return RetrofitResponse.success(data);
    }

    // Return error with message
    logger.e("ApiFitnessHealthRepositoryImpl: getRetrofitResponse: $code: ${data.toString()}}");
    try {
      return RetrofitResponse.error("$code: ${data.message}");
    } catch(e) {
      return RetrofitResponse.error("$code: ${data.detail}");
    }
  }

  /// User APIs

  @override
  Future<RetrofitResponse<ResultUserInfo>> registerUser(SendUserRegister sendUserRegister) {
    return safeApiCall(_registerUser(sendUserRegister));
  }
  Future<RetrofitResponse<ResultUserInfo>> _registerUser(SendUserRegister sendUserRegister) async {
    final response = await _fitnessHealthApi.registerUser(sendUserRegister);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserInfo>> loginUser(SendUserLogin sendUserLogin) {
    return safeApiCall(_loginUser(sendUserLogin));
  }
  Future<RetrofitResponse<ResultUserInfo>> _loginUser(SendUserLogin sendUserLogin) async {
    final response = await _fitnessHealthApi.loginUser(sendUserLogin);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserInfo>> getUserDetail(String token) {
    return safeApiCall(_getUserDetail(token));
  }
  Future<RetrofitResponse<ResultUserInfo>> _getUserDetail(String token) async {
    final response = await _fitnessHealthApi.getUserDetail(token);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) {
    return safeApiCall(_updateUserInfo(token, sendUserUpdateInfo));
  }
  Future<RetrofitResponse<ResultUserInfo>> _updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) async {
    final response = await _fitnessHealthApi.updateUserInfo(token, sendUserUpdateInfo);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultMessage>> updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword) {
    return safeApiCall(_updateUserPassword(token, sendUserUpdatePassword));
  }
  Future<RetrofitResponse<ResultMessage>> _updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword) async {
    final response = await _fitnessHealthApi.updateUserPassword(token, sendUserUpdatePassword);
    return _getRetrofitResponse(response);
  }

  /****************************************************************************/


}