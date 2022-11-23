import 'package:flutter/material.dart';
class MainTextField extends StatelessWidget {

  const MainTextField({
    required this.hintText,
    required this.controller,
    required this.icon,
    required this.inbutType,
    required this.validator,
    this.suffixIcon,
    this.isPassword =false,
    this.suffixPressed
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType inbutType;
  final IconData icon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Function()? suffixPressed;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
          TextStyle(color: Colors.black.withOpacity(.4)),
          contentPadding:
           const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //labelText: 'Email Address',
          border:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),

          prefixIcon:  Icon(
            icon,
          ),
        suffixIcon: suffixIcon != null ? IconButton(
          icon: Icon(suffixIcon),
          onPressed: suffixPressed) : null,

      ),
      validator: validator,
      keyboardType: inbutType,
      onFieldSubmitted: (value) {
        print(value);
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
