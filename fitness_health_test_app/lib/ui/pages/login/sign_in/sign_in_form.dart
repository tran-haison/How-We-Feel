import 'dart:async';

import 'package:fitness_health_test_app/config/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

class SignInForm {

  final _signInModel = SignInModel();

  var username = "";
  var password = "";

  // Stream controllers
  final StreamController<bool> _usernameController = BehaviorSubject();
  final StreamController<bool> _passwordController = BehaviorSubject();
  final StreamController<bool> _formController = BehaviorSubject();

  // Get streams
  Stream<bool> get usernameStream => _usernameController.stream;
  Stream<bool> get passwordStream => _passwordController.stream;
  Stream<bool> get formStream => _formController.stream;

  // On value changed
  void onUsernameChanged(String username) {
    this.username = username;
    _usernameController.sink.add(_signInModel.checkUsername(username));
    _onFormChecked();
  }
  void onPasswordChanged(String password) {
    this.password = password;
    _passwordController.sink.add(_signInModel.checkPassword(password));
    _onFormChecked();
  }
  void _onFormChecked() {
    _formController.sink.add(_signInModel.checkForm());
  }

  void dispose() {
    _usernameController.close();
    _passwordController.close();
    _formController.close();
  }
}

class SignInModel {
  SignInModel({
    this.isUsernameValid = false,
    this.isPasswordValid = false,
  });

  // Values
  bool isUsernameValid;
  bool isPasswordValid;

  // Validators
  final _usernameValidator = NotEmptyStringValidator();
  final _passwordValidator = PasswordStringValidator();

  bool checkUsername(String username) {
    isUsernameValid = _usernameValidator.isValid(username);
    return isUsernameValid;
  }
  bool checkPassword(String password) {
    isPasswordValid = _passwordValidator.isValid(password);
    return isPasswordValid;
  }
  bool checkForm() {
    return isUsernameValid && isPasswordValid;
  }
}