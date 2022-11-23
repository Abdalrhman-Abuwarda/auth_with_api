import 'package:abdullah_mansor/api/api_responce.dart';
import 'package:abdullah_mansor/modules/login/sign-up.dart';
import 'package:abdullah_mansor/preferences/shared_pref_controller.dart';
import 'package:abdullah_mansor/api/controllers/auth_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../preferences/shared_controller.dart';
import '../../shared/components/wedgit/main_button.dart';
import '../../shared/components/wedgit/main_text_field.dart';
import '../../utils/routs.dart';
import '../../utils/validate.dart';
import '../../utils/router.dart';
import '../messenger/messenger_sscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKye = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          //appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: formKye,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: SvgPicture.asset(
                        'assets/icons/appIcon.svg',
                      )),
                      const Center(
                        child: Text(
                          "مرحباً بك مجدداً",
                          //style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        //width: double.infinity,
                        height: 50,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "البريد الالكتروني",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      MainTextField(
                        controller: emailController,
                        hintText: "ادخل البريد الالكتروني",
                        icon: Icons.email,
                        inbutType: TextInputType.name,
                        validator: (value) => Validate.validateEmail(value),
                      ),
                      const SizedBox(
                        //width: double.infinity,
                        height: 30,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "كلمة المرور",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      MainTextField(
                        hintText: "أدخل لكمة المرور",
                        controller: passwordController,
                        icon: Icons.lock,
                        inbutType: TextInputType.visiblePassword,
                        suffixIcon: isPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        isPassword: isPassword,
                        validator: (value) => Validate.validatePassword(value),
                        suffixPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                      ),
                      const SizedBox(
                        //width: double.infinity,
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "نسيت كلمة المرور؟",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Text("تذكرني"),
                          Checkbox(
                              value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck = value!;
                                });
                              })
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MainButton(
                        label: "تسجيل الدخول",
                        color: Colors.blue,
                        textColor: Colors.white,
                        function: () async {
                          if (formKye.currentState!.validate()) {

                            await performLogin();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MainButton(
                        label: "ليس لديك حساب بالفعل",
                        color: Colors.grey.shade300,
                        function: () {
                          Navigator.of(context)?.pushNamed(RouteGenerator.signupPage);
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MainButton(
                        label: "زيارة الموقع",
                        color: Colors.grey.shade300,
                        function: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> performLogin() async {

    if (isCheckData()) {

      await _login();
    }
  }

  bool isCheckData() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      return true;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Enter required data!"),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
    return false;
  }

  Future<void> _login() async {

    ApiResponce apiResponce = await AuthApiController()
        .login(email: emailController.text, password: passwordController.text);
    // if (apiResponce.status == 200) {
    Navigator.of(context)?.pushNamed(RouteGenerator.messangerPage);
    // }
    // showSnackBar(context,
    //   message: apiResponce.message, error: !apiResponce.status);
  }
}
