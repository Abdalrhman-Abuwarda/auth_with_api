import 'package:abdullah_mansor/modules/login/login_screen.dart';
import 'package:abdullah_mansor/preferences/shared_pref_controller.dart';
import 'package:flutter/material.dart';

import '../preferences/shared_controller.dart';
import '../utils/router.dart';
import '../utils/routs.dart';
import 'messenger/messenger_sscreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      SharedPrefController().isLoggedIn() ? Navigator.of(context)?.pushNamed(RouteGenerator.messangerPage) : Navigator.of(context)?.pushNamed(RouteGenerator.signupPage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(
      child: Text('Hello PRO', style: TextStyle(fontSize: 25,color: Colors.purple),),
    ));
  }
}
