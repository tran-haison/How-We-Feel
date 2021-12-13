import 'dart:async';

import 'package:fitness_health_test_app/config/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

class SignUpForm {

  final _signUpModel = SignUpModel();

  var username = "";
  var email = "";
  var password = "";
  var confirmPassword = "";

  // Stream controllers
  final StreamController<bool> _usernameController = BehaviorSubject();
  final StreamController<bool> _emailController = BehaviorSubject();
  final StreamController<bool> _passwordController = BehaviorSubject();
  final StreamController<bool> _confirmPasswordController = BehaviorSubject();
  final StreamController<bool> _formController = BehaviorSubject();

  // Get streams
  Stream<bool> get usernameStream => _usernameController.stream;
  Stream<bool> get emailStream => _emailController.stream;
  Stream<bool> get passwordStream => _passwordController.stream;
  Stream<bool> get confirmPasswordStream => _confirmPasswordController.stream;
  Stream<bool> get formStream => _formController.stream;

  // On value changed
  void onUsernameChanged(String username) {
    this.username = username;
    _usernameController.sink.add(_signUpModel.checkUsername(username));
    _onFormChecked();
  }
  void onEmailChanged(String email) {
    this.email = email;
    _emailController.sink.add(_signUpModel.checkEmail(email));
    _onFormChecked();
  }
  void onPasswordChanged(String password) {
    this.password = password;
    _passwordController.sink.add(_signUpModel.checkPassword(password));
    _confirmPasswordController.sink.add(_signUpModel.checkConfirmPassword(confirmPassword, password));
    _onFormChecked();
  }
  void onConfirmPasswordChanged(String confirmPassword) {
    this.confirmPassword = confirmPassword;
    _confirmPasswordController.sink.add(_signUpModel.checkConfirmPassword(confirmPassword, password));
    _onFormChecked();
  }
  void _onFormChecked() {
    _formController.sink.add(_signUpModel.checkForm());
  }

  void dispose() {
    _usernameController.close();
    _emailController.close();
    _passwordController.close();
    _confirmPasswordController.close();
    _formController.close();
  }
}

class SignUpModel {
  SignUpModel({
    this.isUsernameValid = false,
    this.isEmailValid = false,
    this.isPasswordValid = false,
    this.isConfirmPasswordValid = false,
  });

  // Values
  bool isUsernameValid;
  bool isEmailValid;
  bool isPasswordValid;
  bool isConfirmPasswordValid;

  // Validators
  final _usernameValidator = NotEmptyStringValidator();
  final _emailValidator = EmailStringValidator();
  final _passwordValidator = PasswordStringValidator();

  bool checkUsername(String username) {
    isUsernameValid = _usernameValidator.isValid(username);
    return isUsernameValid;
  }

  bool checkEmail(String email) {
    isEmailValid = _emailValidator.isValid(email);
    return isEmailValid;
  }

  bool checkPassword(String password) {
    isPasswordValid = _passwordValidator.isValid(password);
    return isPasswordValid;
  }

  bool checkConfirmPassword(String confirmPassword, String password) {
    isConfirmPasswordValid = confirmPassword == password;
    return isConfirmPasswordValid;
  }

  bool checkForm() {
    return isUsernameValid &&
        isEmailValid &&
        isPasswordValid &&
        isConfirmPasswordValid;
  }
}
