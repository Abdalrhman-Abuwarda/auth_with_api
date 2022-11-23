// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// class SharedPreferencesController{
//   SharedPreferencesController._(){
//     initSharedPreferences();
//   }
//   static SharedPreferencesController _instance;
//
//   SharedPreferences _sharedPreferences;
//
//   static SharedPreferencesController get instance{
//     if(_instance != null)
//       return _instance;
//
//     return _instance = SharedPreferencesController._();
//   }
//
//   Future initSharedPreferences() async {
//     _sharedPreferences = await SharedPreferences.getInstance();
//   }
//
//
//
