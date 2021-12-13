import 'dart:async';

import 'package:fitness_health_test_app/config/locator/locator.dart';
import 'package:fitness_health_test_app/services/data/api/repository/api_fitness_health_repository.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';

class LoginViewModel {

  final ApiFitnessHealthRepository _fitnessHealthRepo = locator<ApiFitnessHealthRepository>();

  /// Back button pressed
  Future<bool> onBackPressed(LoginPageItem pageItem) async {
    setLoginPageItem(pageItem);
    return false;
  }

  /// Stream to manage current page item
  final _loginPageItemController = StreamController<LoginPageItem>();
  Function(LoginPageItem) get setLoginPageItem => _loginPageItemController.sink.add;
  Stream<LoginPageItem> get loginPageItemStream => _loginPageItemController.stream;

  /// User
  Future<RetrofitResponse> loginUser(String username, String password) async {
    final sendUserLogin = SendUserLogin(username: username, password: password);
    final retrofitResponse = await _fitnessHealthRepo.loginUser(sendUserLogin);
    return retrofitResponse;
  }
  Future<RetrofitResponse> registerUser(String email, String username, String password) async {
    final sendUserRegister = SendUserRegister(email: email, username: username, password: password);
    final retrofitResponse = await _fitnessHealthRepo.registerUser(sendUserRegister);
    return retrofitResponse;
  }

  void dispose() {
    _loginPageItemController.close();
  }
}
