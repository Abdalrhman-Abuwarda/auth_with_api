import 'package:http/http.dart' as http;
class ApiSitting{
  static String baseUri = 'http://demo-api.mr-dev.tech/api/';
  // static String baseUri2 = 'http://demo-api.mr-dev.tech/api/';
  static String userUri = '${baseUri}users';
   String userRegister = '${baseUri}students/auth/register';
  static String userLogin = '${baseUri}students/auth/login';
  static String lohout = '${baseUri}students/auth/logout';
}