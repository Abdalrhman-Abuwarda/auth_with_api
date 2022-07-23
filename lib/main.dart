import 'package:abdullah_mansor/login_screen.dart';
import 'package:flutter/material.dart';

import 'home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeLayout());
  }
}


