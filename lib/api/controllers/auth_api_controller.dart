import 'dart:convert';
import 'dart:io';

import 'package:abdullah_mansor/api/api_helper.dart';
import 'package:abdullah_mansor/api/api_responce.dart';
import 'package:abdullah_mansor/models/student_model.dart';
import 'package:abdullah_mansor/preferences/shared_controller.dart';
import 'package:abdullah_mansor/api/api_sitting.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthApiController extends ApiSitting with ApiHelper {
  Future<ApiResponce> register({required Student student}) async {
    Uri uri = Uri.parse(super.userRegister);
    http.Response response = await http.post(uri,
        body: {
          "full_name": student.fullName,
          "email": student.email,
          "password": student.password,
          "gender": student.gender,
        });

    debugPrint("${response.statusCode} - ${response.body}  ");

    if (response.statusCode == 201 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 201) {
        // Student student = jsonDecode(jsonResponse['object']);
      }
      return ApiResponce(
          message: jsonResponse['message'], status: jsonResponse['status']);
    }
    return failedResponse;
  }

  Future<ApiResponce> login(
      {required String email, required String password}) async {
    debugPrint("This is email : $email");

    Uri uri = Uri.parse(ApiSitting.userLogin);
    var respone = await http.post(uri, body: {
      "email": email,
      "password": password,
    });
    debugPrint("${respone.statusCode} - ${respone.body}  ");
    var jsonResponse = jsonDecode(respone.body);
    if (respone.statusCode == 200) {
      var jsonObject = jsonResponse['object'];
      Student student = Student.fromJson(jsonObject);
      SharedPrefController().saveData(student: student);
      debugPrint("This login Token : ${jsonResponse['object']['token']}");
      debugPrint("response ${respone.body}");
      return ApiResponce(
          message: jsonResponse['message'], status: jsonResponse['status']);
    } else {
      debugPrint("response ${respone.body} - ${respone.statusCode} ");

      return failedResponse;
    }
    if (respone.statusCode == 200 || respone.statusCode == 400) {
      var jsonResponse = jsonDecode(respone.body);
      // if(respone.statusCode == 200){
      // var jsonObject = jsonResponse['object'];
      // Student student = Student.fromJson(jsonObject);
      // SharedPrefController().saveData(student: student);
      // }
      // return ApiResponce(message: jsonResponse['message'], status: jsonResponse['status']);
    }
    // return failedResponse;
  }

  Future<ApiResponce> logout() async {
    debugPrint("This is Token ${ SharedPrefController().token}");
    Uri uri = Uri.parse(ApiSitting.lohout);
    var resonse = await http.get(uri, headers: {
      HttpHeaders.authorizationHeader: SharedPrefController().token,
      HttpHeaders.acceptHeader: 'application/json'
    });
    debugPrint("Logout");
    debugPrint("response ${resonse.statusCode} - ${resonse.body}");

    if (resonse.statusCode == 200) {
      debugPrint("response ${resonse.statusCode} - ${resonse.body}");
      SharedPrefController().logout();

      var jsonResponse = jsonDecode(resonse.body);
      return ApiResponce(
          message: 'Logged out successfully', status: jsonResponse['status']);
    } else {
      debugPrint("response ${resonse.statusCode} - ${resonse.body}");

      return failedResponse;
    }
  }
}
