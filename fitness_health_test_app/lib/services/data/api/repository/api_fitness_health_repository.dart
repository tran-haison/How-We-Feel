import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:fitness_health_test_app/services/data/api/fitness_health_api.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';

import 'api_base_repository.dart';

abstract class ApiFitnessHealthRepository extends ApiBaseRepository {
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> registerUser(SendUserRegister sendUserRegister);
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> loginUser(SendUserLogin sendUserLogin);
  Future<RetrofitResponse<ResultUserDetail>> getUserDetail(String token);
  Future<RetrofitResponse<ResultUserUpdateInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo);
  Future<RetrofitResponse<ResultMessage>> updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword);
}

class ApiFitnessHealthRepositoryImpl extends ApiFitnessHealthRepository {

  FitnessHealthApi get _fitnessHealthApi => FitnessHealthApi(dio);

  /// Function to get retrofit response of any type of data
  RetrofitResponse<T> _getRetrofitResponse<T>(T response) {
    if (response != null) {
      logger.v(response.toString());
      return RetrofitResponse.success(response);
    } else {
      logger.e("Response is null");
      return const RetrofitResponse.error("Response is null");
    }
  }

  /// User APIs

  @override
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> registerUser(SendUserRegister sendUserRegister) {
    return safeApiCall(_registerUser(sendUserRegister));
  }
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> _registerUser(SendUserRegister sendUserRegister) async {
    final response = await _fitnessHealthApi.registerUser(sendUserRegister);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> loginUser(SendUserLogin sendUserLogin) {
    return safeApiCall(_loginUser(sendUserLogin));
  }
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> _loginUser(SendUserLogin sendUserLogin) async {
    final response = await _fitnessHealthApi.loginUser(sendUserLogin);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserDetail>> getUserDetail(String token) {
    return safeApiCall(_getUserDetail(token));
  }
  Future<RetrofitResponse<ResultUserDetail>> _getUserDetail(String token) async {
    final response = await _fitnessHealthApi.getUserDetail(token);
    return _getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserUpdateInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) {
    return safeApiCall(_updateUserInfo(token, sendUserUpdateInfo));
  }
  Future<RetrofitResponse<ResultUserUpdateInfo>> _updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) async {
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

  /// Singleton instance
  ApiFitnessHealthRepositoryImpl._privateConstructor();
  static final ApiFitnessHealthRepositoryImpl _instance = ApiFitnessHealthRepositoryImpl._privateConstructor();
  factory ApiFitnessHealthRepositoryImpl() => _instance;
}