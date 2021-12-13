import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {

  static SharedPrefService? _instance;
  static SharedPreferences? _preferences;

  /// Singleton instance
  static Future<SharedPrefService?> getInstance() async {
    _instance ??= SharedPrefService();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance;
  }

}

class SharedPrefKey {
  static const String USER_TOKEN = "USER_TOKEN";

}