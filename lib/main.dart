import 'package:abdullah_mansor/modules/login/login_screen.dart';
import 'package:abdullah_mansor/modules/splash_page.dart';
import 'package:abdullah_mansor/preferences/shared_controller.dart';
import 'package:abdullah_mansor/preferences/shared_pref_controller.dart';
import 'package:abdullah_mansor/utils/router.dart';
import 'package:abdullah_mansor/utils/routs.dart';
import 'package:flutter/material.dart';
import 'modules/home/home_layout.dart';
import 'modules/login/sign-up.dart';
import 'modules/messenger/messenger_sscreen.dart';
import 'models/usars_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      initialRoute: RouteGenerator.splashPage,
      onGenerateRoute: RouteGenerator.generateRoute,
      // navigatorKey: RouterClass.routerClass.navKey,
        home: SplashPage());
  }
}


