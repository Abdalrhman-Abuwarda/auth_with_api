import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.label,
    required this.color,
    this.textColor = Colors.black,
    required this.function
});

  final String label;
  final Color color;
  final Color textColor ;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(20),
        elevation: 6,
        child: MaterialButton(
          height: 0,
          onPressed: function,
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Text(label,
          style: TextStyle(
            color: textColor,
          ),),

        ),
      ),
    );
  }
}
