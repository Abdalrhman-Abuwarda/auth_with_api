// import 'package:shared_preferences/shared_preferences.dart';
//
// enum PrefKeys {
//   loggedIn,
//   email,
// }
//
// class SharedPrefConroller {
//   SharedPrefConroller._internal();
//
//   late SharedPreferences _sharedPreferences;
//   static SharedPrefConroller? _instance;
//
//   factory SharedPrefConroller() {
//     return _instance ??= SharedPrefConroller._internal();
//   }
//
//   ///TO BE CALLED IN main() after WidgetsFlutterBinding.ensureInitialized(); and Before runApp(widget);
//   Future<void> initPref() async {
//     _sharedPreferences = await SharedPreferences.getInstance();
//   }
//
//   Future<void> save({required String email}) async {
//     await _sharedPreferences.setBool(PrefKeys.loggedIn.name, true);
//     await _sharedPreferences.setString(PrefKeys.email.name, email);
//   }
//
//
//   bool isLoggedIn() {
//     return _sharedPreferences.getBool(PrefKeys.loggedIn.name) ?? false;
//   }
//
//   // bool get loggedIn =>
//   //     _sharedPreferences.getBool(PrefKeys.loggedIn.name) ?? false;
//
// ///(DRY) do not repeat yourself
// //   T? getValueFor<T>({required String key}) {
// //     if(_sharedPreferences.containsKey(key)){
// //       return _sharedPreferences.get(key) as T;
// //     }
// //     return null;
// //   }
//
//   // Future<bool> removeValueFor({required String key}) async {
//   //   if (_sharedPreferences.containsKey(key)) {
//   //     return _sharedPreferences.remove(key);
//   //   }
//   //   return false;
//   // }
//
//   Future<bool> clear() async {
//     return _sharedPreferences.clear();
//   }
// }
