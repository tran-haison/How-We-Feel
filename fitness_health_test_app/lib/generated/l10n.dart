// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Vigour`
  String get app_name {
    return Intl.message(
      'Vigour',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Vigour: Fitness Test`
  String get app_name_long {
    return Intl.message(
      'Vigour: Fitness Test',
      name: 'app_name_long',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back,`
  String get login_sign_in_welcome_title {
    return Intl.message(
      'Welcome back,',
      name: 'login_sign_in_welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter username and password to get started`
  String get login_sign_in_welcome_prompt {
    return Intl.message(
      'Enter username and password to get started',
      name: 'login_sign_in_welcome_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? Sign up`
  String get login_sign_in_dont_have_account {
    return Intl.message(
      'Don\'t have an account? Sign up',
      name: 'login_sign_in_dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get login_sign_in_forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'login_sign_in_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get login_sign_in {
    return Intl.message(
      'Sign in',
      name: 'login_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Welcome,`
  String get login_sign_up_welcome_title {
    return Intl.message(
      'Welcome,',
      name: 'login_sign_up_welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Register a new account to start your journey with us`
  String get login_sign_up_welcome_prompt {
    return Intl.message(
      'Register a new account to start your journey with us',
      name: 'login_sign_up_welcome_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Sign in`
  String get login_sign_up_already_have_account {
    return Intl.message(
      'Already have an account? Sign in',
      name: 'login_sign_up_already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get login_sign_up {
    return Intl.message(
      'Sign up',
      name: 'login_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password,`
  String get login_forgot_password_title {
    return Intl.message(
      'Forgot password,',
      name: 'login_forgot_password_title',
      desc: '',
      args: [],
    );
  }

  /// `We will send a link to your email to reset password`
  String get login_forgot_password_prompt {
    return Intl.message(
      'We will send a link to your email to reset password',
      name: 'login_forgot_password_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get login_forgot_password_confirm {
    return Intl.message(
      'Confirm',
      name: 'login_forgot_password_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get login_username {
    return Intl.message(
      'Username',
      name: 'login_username',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_email {
    return Intl.message(
      'Email',
      name: 'login_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get login_confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'login_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get main_bottom_nav_bar_home {
    return Intl.message(
      'Home',
      name: 'main_bottom_nav_bar_home',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get main_bottom_nav_bar_report {
    return Intl.message(
      'Report',
      name: 'main_bottom_nav_bar_report',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get main_bottom_nav_bar_profile {
    return Intl.message(
      'Profile',
      name: 'main_bottom_nav_bar_profile',
      desc: '',
      args: [],
    );
  }

  /// `Fitness Test`
  String get main_home_fitness_test {
    return Intl.message(
      'Fitness Test',
      name: 'main_home_fitness_test',
      desc: '',
      args: [],
    );
  }

  /// `Goal`
  String get fitness_test_goal {
    return Intl.message(
      'Goal',
      name: 'fitness_test_goal',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get fitness_test_description {
    return Intl.message(
      'Description',
      name: 'fitness_test_description',
      desc: '',
      args: [],
    );
  }

  /// `Disease analysis`
  String get fitness_test_disease_analysis {
    return Intl.message(
      'Disease analysis',
      name: 'fitness_test_disease_analysis',
      desc: '',
      args: [],
    );
  }

  /// `ERROR`
  String get error {
    return Intl.message(
      'ERROR',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Something wrong! Please try again`
  String get error_general {
    return Intl.message(
      'Something wrong! Please try again',
      name: 'error_general',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email! Please enter correct email`
  String get error_email_invalid {
    return Intl.message(
      'Invalid email! Please enter correct email',
      name: 'error_email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Username cannot be empty`
  String get error_username_invalid {
    return Intl.message(
      'Username cannot be empty',
      name: 'error_username_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 8 characters with 1 UPPERCASE, 1 LOWERCASE, 1 NUMBER, 1 SPECIAL CHARACTER`
  String get error_password_invalid {
    return Intl.message(
      'Password must contain at least 8 characters with 1 UPPERCASE, 1 LOWERCASE, 1 NUMBER, 1 SPECIAL CHARACTER',
      name: 'error_password_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password must match`
  String get error_confirm_password_invalid {
    return Intl.message(
      'Password must match',
      name: 'error_confirm_password_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for a sec`
  String get please_wait_for_a_sec {
    return Intl.message(
      'Please wait for a sec',
      name: 'please_wait_for_a_sec',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
