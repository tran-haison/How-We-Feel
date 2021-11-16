// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name":
            MessageLookupByLibrary.simpleMessage("Fitness Health Test App"),
        "error": MessageLookupByLibrary.simpleMessage(
            "Something\'s wrong! Please try again"),
        "error_email_invalid": MessageLookupByLibrary.simpleMessage(
            "Invalid email! Please enter correct email"),
        "error_password_invalid": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least 8 characters with 1 UPPERCASE, 1 LOWERCASE, 1 NUMBER, 1 SPECIAL CHARACTER"),
        "error_username_invalid":
            MessageLookupByLibrary.simpleMessage("Username cannot be empty"),
        "login_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "login_email": MessageLookupByLibrary.simpleMessage("Email"),
        "login_forgot_password_confirm":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "login_forgot_password_prompt": MessageLookupByLibrary.simpleMessage(
            "We will send a link to your email to reset password"),
        "login_forgot_password_title":
            MessageLookupByLibrary.simpleMessage("Forgot password,"),
        "login_password": MessageLookupByLibrary.simpleMessage("Password"),
        "login_sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "login_sign_in_dont_have_account": MessageLookupByLibrary.simpleMessage(
            "Don\'t have an account? Sign up"),
        "login_sign_in_forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "login_sign_in_welcome_prompt": MessageLookupByLibrary.simpleMessage(
            "Enter username and password to get started"),
        "login_sign_in_welcome_title":
            MessageLookupByLibrary.simpleMessage("Welcome back,"),
        "login_sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
        "login_sign_up_already_have_account":
            MessageLookupByLibrary.simpleMessage(
                "Already have an account? Sign in"),
        "login_sign_up_welcome_prompt": MessageLookupByLibrary.simpleMessage(
            "Register a new account to start your journey with us"),
        "login_sign_up_welcome_title":
            MessageLookupByLibrary.simpleMessage("Welcome,"),
        "login_username": MessageLookupByLibrary.simpleMessage("Username")
      };
}
