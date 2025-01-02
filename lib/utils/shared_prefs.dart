import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static final SharedPrefs _instance = SharedPrefs._internal();
  late SharedPreferences _prefs;

  factory SharedPrefs() {
    return _instance;
  }

  SharedPrefs._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Example methods to get and set data
  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // Add more methods as needed
}
