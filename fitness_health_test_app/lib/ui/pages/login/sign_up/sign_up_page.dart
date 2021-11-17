import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_content.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_form_field.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_input_error.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_title.dart';
import 'package:fitness_health_test_app/ui/pages/login/sign_up/sign_up_form.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_page_item.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late SignUpForm _signUpForm;
  late LoginViewModel _viewModel;

  @override
  void initState() {
    // Init instances
    _signUpForm = SignUpForm();
    _viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    _signUpForm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _viewModel.onBackPressed(LoginPageItem.signIn),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTextTitle(title: S.of(context).login_sign_up_welcome_title),
                LoginTextContent(content: S.of(context).login_sign_up_welcome_prompt),
                const SizedBox(height: Dimens.dimen20),
                _buildUsernameTextFormField(),
                LoginTextInputError(
                  streamInput: _signUpForm.usernameStream,
                  errorText: S.of(context).error_username_invalid,
                ),
                const SizedBox(height: Dimens.dimen10),
                _buildEmailTextFormField(),
                LoginTextInputError(
                  streamInput: _signUpForm.emailStream,
                  errorText: S.of(context).error_email_invalid,
                ),
                const SizedBox(height: Dimens.dimen10),
                _buildPasswordTextFormField(),
                LoginTextInputError(
                  streamInput: _signUpForm.passwordStream,
                  errorText: S.of(context).error_password_invalid,
                ),
                const SizedBox(height: Dimens.dimen10),
                _buildConfirmPasswordTextFormField(),
                LoginTextInputError(
                  streamInput: _signUpForm.confirmPasswordStream,
                  errorText: S.of(context).error_confirm_password_invalid,
                ),
                const SizedBox(height: Dimens.dimen20),
                _buildSignUpButton(),
              ],
            ),
          ),
          // Button sign in
          TextButton(
            onPressed: () => _viewModel.setLoginPageItem(LoginPageItem.signIn),
            child: Text(S.of(context).login_sign_up_already_have_account),
          ),
        ],
      ),
    );
  }

  Widget _buildUsernameTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_username,
      icon: const Icon(Icons.person),
      isPassword: false,
      onChanged: _signUpForm.onUsernameChanged,
    );
  }

  Widget _buildEmailTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_email,
      icon: const Icon(Icons.email),
      isPassword: false,
      onChanged: _signUpForm.onEmailChanged,
    );
  }

  Widget _buildPasswordTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_password,
      icon: const Icon(Icons.lock),
      isPassword: true,
      onChanged: _signUpForm.onPasswordChanged,
    );
  }

  Widget _buildConfirmPasswordTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_confirm_password,
      icon: const Icon(Icons.lock),
      isPassword: true,
      onChanged: _signUpForm.onConfirmPasswordChanged,
    );
  }

  Widget _buildSignUpButton() {
    return LoginRoundedElevatedButton(
      text: S.of(context).login_sign_up,
      formStream: _signUpForm.formStream,
      onClick: () {
        // TODO: sign up
      },
    );
  }
}
