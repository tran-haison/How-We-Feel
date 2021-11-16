import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_text_form_field.dart';
import 'package:fitness_health_test_app/ui/pages/login/forgot_password/forgot_password_form.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late ForgotPasswordForm _forgotPasswordForm;
  late LoginViewModel _viewModel;

  @override
  void initState() {
    // Init instances
    _forgotPasswordForm = ForgotPasswordForm();
    _viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    _forgotPasswordForm.dispose();
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
              children: <Widget>[
                _buildTextForgotPasswordTitle(context),
                _buildTextForgotPasswordPrompt(context),
                const SizedBox(height: Dimens.dimen20),
                _buildEmailTextFormField(),
                _buildEmailTextError(context),
              ],
            ),
          ),
          _buildConfirmButton(),
        ],
      ),
    );
  }

  Widget _buildTextForgotPasswordTitle(BuildContext context) {
    return Text(
      S.of(context).login_forgot_password_title,
      style: const TextStyle(
        fontSize: Dimens.fontSize25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextForgotPasswordPrompt(BuildContext context) {
    return Text(
      S.of(context).login_forgot_password_prompt,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: Dimens.fontSize14,
      ),
    );
  }

  Widget _buildEmailTextFormField() {
    return LoginTextFormField(
      hintText: S.of(context).login_email,
      icon: const Icon(Icons.email),
      isPassword: false,
      onChanged: _forgotPasswordForm.onEmailChanged,
    );
  }

  Widget _buildEmailTextError(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _forgotPasswordForm.emailStream,
      builder: (context, snapshot) {
        final isEmailValid = snapshot.data;
        if (isEmailValid != null) {
          if (!isEmailValid) {
            return Column(
              children: [
                const SizedBox(height: Dimens.dimen5),
                Text(
                  S.of(context).error_email_invalid,
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

  Widget _buildConfirmButton() {
    return StreamBuilder<bool>(
      stream: _forgotPasswordForm.formStream,
      builder: (context, snapshot) {
        final isFormValid = snapshot.data;
        if (isFormValid != null) {
          if (isFormValid) {
            return LoginRoundedElevatedButton(
              text: S.of(context).login_forgot_password_confirm,
              onClick: () {
                // TODO: confirm
              },
            );
          }
        }
        return LoginRoundedElevatedButton(
          text: S.of(context).login_forgot_password_confirm,
          onClick: null,
        );
      },
    );
  }
}
