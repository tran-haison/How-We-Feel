import 'dart:developer';

import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/services/data/api/retrofit_models.dart';
import 'package:fitness_health_test_app/ui/common_widgets/dialogs/base_alert_dialog.dart';
import 'package:fitness_health_test_app/ui/common_widgets/dialogs/exception_alert_dialog.dart';
import 'package:fitness_health_test_app/ui/common_widgets/dialogs/loading_alert_dialog.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_content.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_form_field.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_input_error.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_title.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';
import 'package:fitness_health_test_app/ui/pages/login/sign_in/sign_in_form.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_models/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late SignInForm _signInForm;
  late LoginViewModel _viewModel;

  @override
  void initState() {
    // Init instances
    _signInForm = SignInForm();
    _viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    _signInForm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTextTitle(title: S.of(context).login_sign_in_welcome_title),
              LoginTextContent(content: S.of(context).login_sign_in_welcome_prompt),
              const SizedBox(height: Dimens.dimen20),
              _buildUsernameTextFormField(),
              LoginTextInputError(
                streamInput: _signInForm.usernameStream,
                errorText: S.of(context).error_username_invalid,
              ),
              const SizedBox(height: Dimens.dimen10),
              _buildPasswordTextFormField(),
              LoginTextInputError(
                streamInput: _signInForm.passwordStream,
                errorText: S.of(context).error_password_invalid,
              ),
              _buildForgotPasswordButton(),
              _buildSignInButton(),
            ],
          ),
        ),
        TextButton(
          onPressed: () => _viewModel.setLoginPageItem(LoginPageItem.signUp),
          child: Text(S.of(context).login_sign_in_dont_have_account),
        ),
      ],
    );
  }

  Widget _buildUsernameTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_username,
      icon: const Icon(Icons.person),
      isPassword: false,
      onChanged: _signInForm.onUsernameChanged,
    );
  }

  Widget _buildPasswordTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_password,
      icon: const Icon(Icons.lock),
      isPassword: true,
      onChanged: _signInForm.onPasswordChanged,
    );
  }

  Widget _buildForgotPasswordButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => _viewModel.setLoginPageItem(LoginPageItem.forgotPassword),
        child: Text(
          S.of(context).login_sign_in_forgot_password,
          style: const TextStyle(
            fontSize: Dimens.fontSize14,
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return LoginRoundedElevatedButton(
      text: S.of(context).login_sign_in,
      formStream: _signInForm.formStream,
      onClick: loginUser,
    );
  }

  Future<void> loginUser() async {
    // Show loading dialog
    final loadingDialog = LoadingAlertDialog(context: context);
    showAlertDialog(context, loadingDialog);

    try {
      // Wait for login user
      final response = await _viewModel.loginUser(_signInForm.username, _signInForm.password);

      // Dismiss loading dialog
      Navigator.of(context).pop();

      // Handle response from backend
      _handleResponse(response);
    } on Exception catch(e) {
      // Dismiss loading dialog
      Navigator.of(context).pop();
      log(e.toString());

      // Show exception dialog
      final exceptionAlertDialog = ExceptionAlertDialog(
        context: context,
        exception: e.toString(),
      );
      showAlertDialog(context, exceptionAlertDialog);
    }
  }

  void _handleResponse(RetrofitResponse response) {
    response.when(
      success: (data) {
        // TODO: save user info to shared preferences and login
        final successDialog = BaseAlertDialog(
          context: context,
          title: "Success",
          content: data.toString(),
          defaultActionText: "OK",
        );
        showAlertDialog(context, successDialog);
      },
      error: (errorMessage) {
        // Show exception dialog
        final exceptionAlertDialog = ExceptionAlertDialog(
          context: context,
          exception: errorMessage ?? S.of(context).error_general,
        );
        showAlertDialog(context, exceptionAlertDialog);
      },
    );
  }
}
