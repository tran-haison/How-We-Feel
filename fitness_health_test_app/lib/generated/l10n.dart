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

  /// `Fitness Health Test App`
  String get app_name {
    return Intl.message(
      'Fitness Health Test App',
      name: 'app_name',
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

  /// `Something wrong! Please try again`
  String get error {
    return Intl.message(
      'Something wrong! Please try again',
      name: 'error',
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
