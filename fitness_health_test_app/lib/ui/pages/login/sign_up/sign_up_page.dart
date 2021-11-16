import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_rounded_elevated_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/login_text_form_field.dart';
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
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context, listen: false);
    return WillPopScope(
      onWillPop: () => viewModel.onBackPressed(LoginPageItem.signIn),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).login_sign_up_welcome_title,
                  style: const TextStyle(
                    fontSize: Dimens.fontSize25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  S.of(context).login_sign_up_welcome_prompt,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: Dimens.fontSize14,
                  ),
                ),
                const SizedBox(height: Dimens.dimen20),
                // Username
                LoginTextFormField(
                  hintText: S.of(context).login_username,
                  icon: const Icon(Icons.person),
                  isPassword: false,
                  onChanged: (text) {},
                ),
                const SizedBox(height: Dimens.dimen10),
                // Email
                LoginTextFormField(
                  hintText: S.of(context).login_email,
                  icon: const Icon(Icons.email),
                  isPassword: false,
                  onChanged: (text) {},
                ),
                const SizedBox(height: Dimens.dimen10),
                // Password
                LoginTextFormField(
                  hintText: S.of(context).login_password,
                  icon: const Icon(Icons.lock),
                  isPassword: true,
                  onChanged: (text) {},
                ),
                const SizedBox(height: Dimens.dimen10),
                // Confirm password
                LoginTextFormField(
                  hintText: S.of(context).login_confirm_password,
                  icon: const Icon(Icons.lock),
                  isPassword: true,
                  onChanged: (text) {},
                ),
                const SizedBox(height: Dimens.dimen20),
                // Button sign up
                LoginRoundedElevatedButton(
                  text: S.of(context).login_sign_up,
                  onClick: () {
                    // TODO: sign up
                  },
                ),
              ],
            ),
          ),
          // Button sign in
          TextButton(
            onPressed: () => viewModel.setLoginPageItem(LoginPageItem.signIn),
            child: Text(S.of(context).login_sign_up_already_have_account),
          ),
        ],
      ),
    );
  }
}
