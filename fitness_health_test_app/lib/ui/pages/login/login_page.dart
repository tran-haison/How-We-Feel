import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/error_message_container.dart';
import 'package:fitness_health_test_app/ui/pages/login/login_page_item.dart';
import 'package:fitness_health_test_app/ui/pages/login/sign_in/sign_in_page.dart';
import 'package:fitness_health_test_app/ui/pages/login/sign_up/sign_up_page.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginViewModel viewModel;

  @override
  void initState() {
    // Set first page to be SignInPage
    viewModel = LoginViewModel();
    viewModel.setLoginPageItem(LoginPageItem.signIn);

    super.initState();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<LoginViewModel>(
      create: (context) => viewModel,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimens.dimen15),
            child: StreamBuilder(
              stream: viewModel.loginPageItemStream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  final pageItem = snapshot.data;
                  if (pageItem == null) {
                    return ErrorMessageContainer(text: S.of(context).error);
                  }
                  return _buildPageItem(pageItem as LoginPageItem);
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPageItem(LoginPageItem pageItem) {
    switch (pageItem) {
      case LoginPageItem.signIn:
        return const SignInPage();
      case LoginPageItem.signUp:
        return const SignUpPage();
      case LoginPageItem.forgotPassword:
      // TODO: add forgot password page
    }
    return const SignInPage();
  }
}
