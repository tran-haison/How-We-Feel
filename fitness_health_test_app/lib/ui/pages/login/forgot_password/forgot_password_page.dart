import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_content.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_form_field.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_input_error.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_pages/login_text_title.dart';
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
                LoginTextTitle(title: S.of(context).login_forgot_password_title),
                LoginTextContent(content: S.of(context).login_forgot_password_prompt),
                const SizedBox(height: Dimens.dimen20),
                _buildEmailTextFormField(),
                LoginTextInputError(
                  streamInput: _forgotPasswordForm.emailStream,
                  errorText: S.of(context).error_email_invalid,
                ),
              ],
            ),
          ),
          _buildConfirmButton(),
        ],
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

  Widget _buildConfirmButton() {
    return LoginRoundedElevatedButton(
      text: S.of(context).login_forgot_password_confirm,
      formStream: _forgotPasswordForm.formStream,
      onClick: () {
        // TODO: confirm
      },
    );
  }
}
