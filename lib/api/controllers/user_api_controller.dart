import 'package:abdullah_mansor/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

import '../api_sitting.dart';

class UserApiController{

  Future<List<User>> read() async {
    Uri uri = Uri.parse(ApiSitting.userUri);
    Response response = await http.get(uri);

    if (response.statusCode == 200) {
      dynamic jsonResponce = jsonDecode(response.body);
      List<dynamic> jsonArray = jsonResponce['data'] as List;
      return jsonArray.map((value) => User.fromJson(value)).toList();
    }
    return [];
  }
}