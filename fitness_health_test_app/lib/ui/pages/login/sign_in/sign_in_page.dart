import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_text_form_field.dart';
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

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).login_sign_in_welcome_title,
                style: const TextStyle(
                  fontSize: Dimens.fontSize25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                S.of(context).login_sign_in_welcome_prompt,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: Dimens.fontSize14,
                ),
              ),
              const SizedBox(height: Dimens.dimen20),
              // Username field
              LoginTextFormField(
                hintText: S.of(context).login_username,
                controller: _usernameController,
                icon: const Icon(Icons.person),
                isPassword: false,
              ),
              const SizedBox(height: Dimens.dimen10),
              // Password field
              LoginTextFormField(
                hintText: S.of(context).login_password,
                controller: _passwordController,
                icon: const Icon(Icons.lock),
                isPassword: true,
              ),
              const SizedBox(height: Dimens.dimen20),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  S.of(context).login_sign_in_forgot_password,
                  style: const TextStyle(
                    fontSize: Dimens.fontSize14,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: Dimens.dimen20),
              _buttonSignIn(context),
            ],
          ),
        ),
        TextButton(
          onPressed: () => viewModel.setLoginPageItem(LoginPageItem.signUp),
          child: Text(S.of(context).login_sign_in_dont_have_account),
        ),
      ],
    );
  }

  Widget _buttonSignIn(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(Dimens.buttonHeight40),
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen10,
          horizontal: 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dimen10),
        ),
      ),
      onPressed: () {
        // TODO: sign in
      },
      child: Text(
        S.of(context).login_sign_in,
        style: const TextStyle(
          fontSize: Dimens.fontSize16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
