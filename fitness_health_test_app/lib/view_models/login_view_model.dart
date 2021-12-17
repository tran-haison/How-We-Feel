import 'dart:async';

import 'package:fitness_health_test_app/config/locator/locator.dart';
import 'package:fitness_health_test_app/services/data/api/repository/api_fitness_health_repository.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:fitness_health_test_app/services/data/local/shared_pref_service.dart';
import 'package:fitness_health_test_app/services/data/models/user_profile.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';

class LoginViewModel {

  final ApiFitnessHealthRepository _fitnessHealthRepo = locator<ApiFitnessHealthRepository>();
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();

  /// Back button pressed
  Future<bool> onBackPressed(LoginPageItem pageItem) async {
    setLoginPageItem(pageItem);
    return false;
  }

  /// Stream to manage current page item
  final _loginPageItemController = StreamController<LoginPageItem>();
  Function(LoginPageItem) get setLoginPageItem => _loginPageItemController.sink.add;
  Stream<LoginPageItem> get loginPageItemStream => _loginPageItemController.stream;

  Future<RetrofitResponse<ResultUserInfo>> loginUser(String username, String password) async {
    final sendUserLogin = SendUserLogin(username: username, password: password);
    final retrofitResponse = await _fitnessHealthRepo.loginUser(sendUserLogin);
    return retrofitResponse;
  }
  Future<RetrofitResponse<ResultUserInfo>> registerUser(String email, String username, String password) async {
    final sendUserRegister = SendUserRegister(email: email, username: username, password: password);
    final retrofitResponse = await _fitnessHealthRepo.registerUser(sendUserRegister);
    return retrofitResponse;
  }

  Future<void> saveUserProfile(dynamic data) async {
    final userProfile = UserProfile(
      pk: data.pk ?? 0,
      email: data.email ?? "",
      username: data.username ?? "",
      token: data.token ?? "",
    );
    final userProfileToString = userProfile.toJson().toString();
    _sharedPrefService.saveString(SharedPrefKey.userProfile, userProfileToString);
  }

  void dispose() {
    _loginPageItemController.close();
  }
}
