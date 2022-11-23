import 'package:abdullah_mansor/models/student_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum PrefKeys {id, full_name, email, gender, token, refresh_token ,isLoggedIn}
class SharedPrefController {
  SharedPrefController._();

  static final SharedPrefController _instance=SharedPrefController._();
  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  // static SharedPrefController? get instance {
  //   if (_instance != null) {
  //     return _instance;
  //   }
  //   _instance = SharedPrefController._();
  //   return _instance;
  // }

  Future initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  bool isLoggedIn() {
    return _sharedPreferences.getBool(PrefKeys.isLoggedIn.name) ?? false;
  }

  Future<void> saveData(
      {required Student student}) async {
    await _sharedPreferences.setBool(PrefKeys.isLoggedIn.name, true);
    await _sharedPreferences.setString(PrefKeys.email.name, student.email);
    await _sharedPreferences.setString(PrefKeys.full_name.name, student.fullName);
    await _sharedPreferences.setString(PrefKeys.token.name, 'Bearer ${student.token}');
    await _sharedPreferences.setString(PrefKeys.gender.name, student.gender);
    await _sharedPreferences.setInt(PrefKeys.id.name, student.id);
    await _sharedPreferences.setString(PrefKeys.refresh_token.name, 'Bearer ${student.refreshToken}');
  }

  Future<bool> logout() async {
    return await _sharedPreferences.clear();
  }

  String get email{
    return _sharedPreferences.getString("email")??'';
  }

  String get token => _sharedPreferences.getString(PrefKeys.token.name) ?? '';
}
