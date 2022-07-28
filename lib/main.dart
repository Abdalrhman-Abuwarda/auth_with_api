import 'package:abdullah_mansor/login_screen.dart';
import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'ibm.dart';
import 'list_view.dart';
import 'home_layout.dart';
import 'listbulddre.dart';
import 'messenger_sscreen.dart';
import 'usars_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Bmi());
  }
}


