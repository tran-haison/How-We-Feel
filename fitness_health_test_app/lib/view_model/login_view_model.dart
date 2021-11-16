import 'dart:async';

import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';

class LoginViewModel {
  // Stream to manage page item
  final _loginPageItemController = StreamController<LoginPageItem>();
  void setLoginPageItem(LoginPageItem pageItems) => _loginPageItemController.sink.add(pageItems);
  Stream<LoginPageItem> get loginPageItemStream => _loginPageItemController.stream;

  // Back button pressed
  Future<bool> onBackPressed(LoginPageItem pageItem) async {
    setLoginPageItem(pageItem);
    return false;
  }

  void dispose() {
    _loginPageItemController.close();
  }
}
