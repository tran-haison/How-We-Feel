import 'package:dio/dio.dart';
import 'package:fitness_health_test_app/services/data/api/fitness_health_api.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:fitness_health_test_app/services/data/repository/base_repository.dart';

abstract class FitnessHealthRepository extends BaseRepository {
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> registerUser(SendUserRegister sendUserRegister);
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> loginUser(SendUserLogin sendUserLogin);
  Future<RetrofitResponse<ResultUserDetail>> getUserDetail(String token);
  Future<RetrofitResponse<ResultUserUpdateInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo);
  Future<RetrofitResponse<ResultMessage>> updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword);
}

class FitnessHealthRepositoryImpl extends FitnessHealthRepository {

  FitnessHealthApi get _fitnessHealthApi => FitnessHealthApi(dio);

  /// Function to get retrofit response of any type of data
  RetrofitResponse<T> getRetrofitResponse<T>(Response<T> response) {
    if (response.data != null) {
      return RetrofitResponse.success(response.data, response.statusCode, response.statusMessage);
    }
    return RetrofitResponse.error(response.statusMessage, response.statusCode);
  }

  /// User APIs

  @override
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> registerUser(SendUserRegister sendUserRegister) {
    return safeApiCall(_registerUser(sendUserRegister));
  }
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> _registerUser(SendUserRegister sendUserRegister) async {
    final response = await _fitnessHealthApi.registerUser(sendUserRegister);
    return getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> loginUser(SendUserLogin sendUserLogin) {
    return safeApiCall(_loginUser(sendUserLogin));
  }
  Future<RetrofitResponse<ResultUserRegisterAndLogin>> _loginUser(SendUserLogin sendUserLogin) async {
    final response = await _fitnessHealthApi.loginUser(sendUserLogin);
    return getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserDetail>> getUserDetail(String token) {
    return safeApiCall(_getUserDetail(token));
  }
  Future<RetrofitResponse<ResultUserDetail>> _getUserDetail(String token) async {
    final response = await _fitnessHealthApi.getUserDetail(token);
    return getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultUserUpdateInfo>> updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) {
    return safeApiCall(_updateUserInfo(token, sendUserUpdateInfo));
  }
  Future<RetrofitResponse<ResultUserUpdateInfo>> _updateUserInfo(String token, SendUserUpdateInfo sendUserUpdateInfo) async {
    final response = await _fitnessHealthApi.updateUserInfo(token, sendUserUpdateInfo);
    return getRetrofitResponse(response);
  }

  @override
  Future<RetrofitResponse<ResultMessage>> updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword) {
    return safeApiCall(_updateUserPassword(token, sendUserUpdatePassword));
  }
  Future<RetrofitResponse<ResultMessage>> _updateUserPassword(String token, SendUserUpdatePassword sendUserUpdatePassword) async {
    final response = await _fitnessHealthApi.updateUserPassword(token, sendUserUpdatePassword);
    return getRetrofitResponse(response);
  }

  /****************************************************************************/

}