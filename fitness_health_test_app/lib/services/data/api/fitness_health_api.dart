import 'package:dio/dio.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:retrofit/retrofit.dart';

part 'fitness_health_api.g.dart';

@RestApi(baseUrl: "https://fitness-health-test-app.herokuapp.com")
abstract class FitnessHealthApi {

  static const String WORK_API = "/api/v1";
  factory FitnessHealthApi(Dio dio) = _FitnessHealthApi;

  /// User APIs

  @POST("$WORK_API/user/register")
  Future<ResultUserRegisterAndLogin> registerUser(@Body() SendUserRegister sendUserRegister);

  @POST("$WORK_API/user/login")
  Future<ResultUserRegisterAndLogin> loginUser(@Body() SendUserLogin sendUserLogin);

  @GET("$WORK_API/user/detail")
  Future<ResultUserDetail> getUserDetail(@Header("Authorization") String token);

  @PUT("$WORK_API/user/detail/update")
  Future<ResultUserUpdateInfo> updateUserInfo(@Header("Authorization") String token, @Body() SendUserUpdateInfo sendUserUpdateInfo);

  @PUT("$WORK_API/user/update_password")
  Future<ResultMessage> updateUserPassword(@Header("Authorization") String token, @Body() SendUserUpdatePassword sendUserUpdatePassword);

  /****************************************************************************/
}