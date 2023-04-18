// ignore_for_file: no_leading_underscores_for_local_identifiers, duplicate_ignore

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences prefs;

  LocalStorageService(this.prefs);

  Future<void> setToken(String token) async {
    prefs.setString("MidfeeglobalToken", token);
  }

  String? getUserToken() {
    return prefs.getString("MidfeeglobalToken");
  }

  // ignore: no_leading_underscores_for_local_identifiers
  Future<void> setName(_name) async {
    prefs.setString('MidfeeglobalName', _name);
  }

  Future<void> setEmail(_email) async {
    prefs.setString('MidfeeglobalEmail', _email);
  }

   String? getEmail() {
    return prefs.getString("MidfeeglobalEmail");
  }
}
