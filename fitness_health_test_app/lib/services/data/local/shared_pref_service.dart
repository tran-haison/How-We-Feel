import 'package:fitness_health_test_app/config/logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  SharedPrefService(
    this.preferences,
  );

  final SharedPreferences preferences;

  Future<String> getString(String key) async {
    final value = preferences.getString(key);
    logger.d("SharedPrefService: getString: $key - $value");
    return value ?? "";
  }

  Future<void> saveString(String key, String value) async {
    logger.d("SharedPrefService: saveString: $key - $value");
    preferences.setString(key, value);
  }
}

class SharedPrefKey {
  static const String isFirstTime = "IS_FIRST_TIME";
  static const String isRememberMe = "IS_REMEMBER_ME";
  static const String userProfile = "USER_PROFILE";
  static const String userToken = "USER_TOKEN";
  static const String userName = "USERNAME";
  static const String userEmail = "USER_EMAIL";
  static const String userPk = "USER_PK";
}
