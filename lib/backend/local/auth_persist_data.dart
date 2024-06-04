import 'dart:convert';

import 'package:assignment_flutter_developer_wedevs/backend/local/auth_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const AUTH_PERSIST_DATA = 'authPersistData';

class AuthPersistData {
  Future<void> setAuthData(AuthData authData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AUTH_PERSIST_DATA, jsonEncode(authData.toJson()));
  }

  Future<AuthData?> getAuthData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? authDataJson = prefs.getString(AUTH_PERSIST_DATA);
    // if (authDataJson == null) throw Exception('not authenticated');
    return authDataJson == null
        ? null
        : AuthData.fromJson(jsonDecode(authDataJson));
  }

  Future<void> deleteAuthData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(AUTH_PERSIST_DATA);
  }
}
