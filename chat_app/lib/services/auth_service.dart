import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static late final SharedPreferences _prefs;

  Future<void> loginUser(String userName) async {
    //TODO: Implement login
    try {
      await _prefs.setString("userName", userName);
    } catch (e) {
      print(e);
    }
  }

  void logoutUser() {
    //TODO: Implement logout
    _prefs.clear();
  }

  String? getUserName() {
    return _prefs.getString("userName") ?? "DefaultValue";
  }
}
