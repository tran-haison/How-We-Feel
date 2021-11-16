import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_text_form_field.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';
import 'package:fitness_health_test_app/ui/pages/login/sign_in/sign_in_form.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_model/login_view_model.dart';
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
              _buildTextWelcomeTitle(context),
              _buildTextWelcomePrompt(context),
              const SizedBox(height: Dimens.dimen20),
              _buildUsernameTextFormField(),
              _buildUsernameTextError(context),
              const SizedBox(height: Dimens.dimen10),
              _buildPasswordTextFormField(),
              _buildPasswordTextError(context),
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

  Widget _buildTextWelcomeTitle(BuildContext context) {
    return Text(
      S.of(context).login_sign_in_welcome_title,
      style: const TextStyle(
        fontSize: Dimens.fontSize25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextWelcomePrompt(BuildContext context) {
    return Text(
      S.of(context).login_sign_in_welcome_prompt,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: Dimens.fontSize14,
      ),
    );
  }

  Widget _buildUsernameTextError(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _signInForm.usernameStream,
      builder: (context, snapshot) {
        final isUsernameValid = snapshot.data;
        if (isUsernameValid != null) {
          if (!isUsernameValid) {
            return Column(
              children: [
                const SizedBox(height: Dimens.dimen5),
                Text(
                  S.of(context).error_username_invalid,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: Dimens.fontSize12,
                  ),
                ),
              ],
            );
          }
        }
        return const SizedBox(height: 0, width: 0);
      },
    );
  }

  Widget _buildPasswordTextError(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _signInForm.passwordStream,
      builder: (context, snapshot) {
        final isPasswordValid = snapshot.data;
        if (isPasswordValid != null) {
          if (!isPasswordValid) {
            return Column(
              children: [
                const SizedBox(height: Dimens.dimen5),
                Text(
                  S.of(context).error_password_invalid,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: Dimens.fontSize12,
                  ),
                ),
              ],
            );
          }
        }
        return const SizedBox(height: 0, width: 0);
      },
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
    return StreamBuilder<bool>(
      stream: _signInForm.formStream,
      builder: (context, snapshot) {
        final isFormValid = snapshot.data;
        if (isFormValid != null) {
          if (isFormValid) {
            return LoginRoundedElevatedButton(
              text: S.of(context).login_sign_in,
              onClick: () {
                // TODO: sign in
              },
            );
          }
        }
        return LoginRoundedElevatedButton(
          text: S.of(context).login_sign_in,
          onClick: null,
        );
      },
    );
  }
}
