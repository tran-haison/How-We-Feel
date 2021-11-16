import 'dart:async';

import 'package:fitness_health_test_app/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

class ForgotPasswordForm {
  final _forgotPasswordModel = ForgotPasswordModel();

  // Stream controller
  final StreamController<bool> _emailController = BehaviorSubject();
  final StreamController<bool> _formController = BehaviorSubject();

  // Get streams
  Stream<bool> get emailStream => _emailController.stream;
  Stream<bool> get formStream => _formController.stream;

  // On value changed
  void onEmailChanged(String email) {
    _emailController.sink.add(_forgotPasswordModel.checkEmail(email));
    _onFormChecked();
  }
  void _onFormChecked() {
    _formController.sink.add(_forgotPasswordModel.checkForm());
  }

  void dispose() {
    _emailController.close();
    _formController.close();
  }
}

class ForgotPasswordModel {
  ForgotPasswordModel({
    this.isEmailValid = false,
  });

  // Value
  bool isEmailValid;

  // Validator
  final _emailValidator = EmailStringValidator();

  bool checkEmail(String email) {
    isEmailValid = _emailValidator.isValid(email);
    return isEmailValid;
  }
  bool checkForm() {
    return isEmailValid;
  }
}
