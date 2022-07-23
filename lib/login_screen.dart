import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: SvgPicture.asset(
                      'assets/icons/appIcon.svg',
                    )),
                    Center(
                      child: const Text(
                        "مرحباً بك مجدداً",
                        //style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      //width: double.infinity,
                      height: 50,
                    ),
                    Row(
                      children: [
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
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'ادخل البريد الالكتروني',
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.4)),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          //labelText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                          )),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    SizedBox(
                      //width: double.infinity,
                      height: 30,
                    ),
                    Row(
                      children: [
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
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: 'ادخل كلمة المرور',
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.4)),
                          //labelText: 'Email Address',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          // errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    SizedBox(
                      //width: double.infinity,
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "نسيت كلمة المرور؟",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text("تذكرني"),
                        Checkbox(
                            value: isCheck,
                            onChanged: (value) {
                              setState(() {
                                isCheck = value!;
                              });
                            })
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      //color: Colors.blue,
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        elevation: 6,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            print(emailController.text);
                            print(passwordController.text);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      // color: Colors.grey.shade300,
                      child: Material(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                        elevation: 6,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          child: Text(
                            "ليس لديك حساب؟",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            // print(emailController.text);
                            // print(passwordController.text);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Material(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                        elevation: 6,
                        child: MaterialButton(
                          height: 0,
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: Text("زيارة الموقع"),

                        ),
                      ),

                      // Container(
                      //   height: 40,
                      //   width: double.infinity,
                      //   color: Colors.blue,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(0.0),
                      //     child: Material(
                      //       borderRadius: BorderRadius.circular(30) ,
                      //       child: MaterialButton(
                      //         color: Colors.grey.shade300,
                      //         padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      //         child: Text(
                      //           "زيارة الموقع",
                      //           style: TextStyle(color: Colors.black),
                      //         ),
                      //         onPressed: () {
                      //           print(emailController.text);
                      //           print(passwordController.text);
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
