import 'package:abdullah_mansor/api/api_responce.dart';
import 'package:abdullah_mansor/models/student_model.dart';
import 'package:abdullah_mansor/modules/login/login_screen.dart';
import 'package:abdullah_mansor/api/controllers/auth_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../preferences/shared_controller.dart';
import '../../shared/components/wedgit/main_button.dart';
import '../../shared/components/wedgit/main_text_field.dart';
import '../../utils/router.dart';
import '../../utils/routs.dart';
import '../../utils/validate.dart';
import '../messenger/messenger_sscreen.dart';

enum Gender {
  M,
  F,
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCheck = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formKye = GlobalKey<FormState>();
  bool isPassword = true;
  String _human = Gender.M.name;
  // String _gender = Gender.M.name;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                          "تسجيل حساب جديد",
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
                            "اسم المستخدم",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      MainTextField(
                        controller: fullNameController,
                        hintText: "ادخل اسم المستخدم",
                        icon: Icons.person,
                        inbutType: TextInputType.emailAddress,
                        validator: (value) => Validate.validateUserName(value),
                      ),
                      const SizedBox(
                        //width: double.infinity,
                        height: 20,
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
                        hintText: "ادخل البريد الاكتروني",
                        icon: Icons.email,
                        inbutType: TextInputType.emailAddress,
                        validator: (value) => Validate.validateEmail(value),
                      ),
                      const SizedBox(
                        //width: double.infinity,
                        height: 20,
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
                        hintText: "أدخل كلمة المرور",
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
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "الجنس",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ListTile(
                            title: const Text('Male'),
                            leading: Radio<String>(
                              value: Gender.M.name,
                              groupValue: _human,
                              onChanged: (String? value) {
                                setState(() {
                                  _human = value??'';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Femali'),
                            leading: Radio<String>(
                              value: Gender.F.name,
                              groupValue: _human,
                              onChanged: (String? value) {
                                setState(() {
                                  _human = value??'';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // const SizedBox(
                          //   width: 20,
                          // ),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: const Text(
                          //     "نسيت كلمة المرور؟",
                          //     style: TextStyle(
                          //         fontSize: 15, fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          // const SizedBox(
                          //   width: 100,
                          // ),
                          Checkbox(
                              value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck = value!;
                                });
                              }),
                          const Text("الموافقة على السياسات و الحبشتكنات"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MainButton(
                        label: "تسجيل",
                        color: Colors.blue,
                        textColor: Colors.white,
                        function: () async {
                          if (formKye.currentState!.validate()) {
                            await performSignIn();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MainButton(
                        label: "لديك حساب بالفعل",
                        color: Colors.grey.shade300,
                        function: () {
                          Navigator.of(context)?.pushNamed(RouteGenerator.loginPage);
                        },
                      ),
                      const SizedBox(
                        height: 40,
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

  Future<void> performSignIn() async {
    if (isCheckData()) {
      await _register();
    }
  }

  bool isCheckData() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty && fullNameController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter required data!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          dismissDirection: DismissDirection.horizontal,
        ),
      );
      return true;
    }
    return false;
  }

  Future<void> _register() async {
    ApiResponce apiRisponse =
        await AuthApiController().register(student: student);
    print(apiRisponse.status);
    if (apiRisponse.status == true) {
      Navigator.of(context).pushNamed(RouteGenerator.loginPage);
    }
  }

  Student get student {
    Student student = Student();
    student.fullName = fullNameController.text;
    student.email = emailController.text;
    student.password = passwordController.text;
    student.gender = _human.toString();
    print( _human.toString());
    return student;
  }
}
