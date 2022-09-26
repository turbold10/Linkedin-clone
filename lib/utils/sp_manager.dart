import 'package:shared_preferences/shared_preferences.dart';

class SpManager {
  late SharedPreferences sharedPreference;

  final String userUid = 'uid';

  init() async {
    sharedPreference = await SharedPreferences.getInstance();
  }

  // Access Token
  saveUserUid(String uid) async {
    await sharedPreference.setString(userUid, uid);
  }

  Future<String> getAccessToken() async {
    String? userid = sharedPreference.getString(userUid);
    return userid ?? '';
  }
}
