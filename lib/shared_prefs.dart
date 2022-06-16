import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static String isshowedkey = "SHOWED";

  static Future<bool> saveIsViewedState(bool isViewed) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(isshowedkey, isViewed);
  }

  static Future<bool?> getIsViewedState() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isshowedkey);
  }
}
