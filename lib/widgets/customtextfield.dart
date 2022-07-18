import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? icon;
  final String? hintText;
  bool? isObscure = true;
  bool? isEnabled = true;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.icon,
    required this.hintText,
    required this.isObscure,
    this.isEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        enabled: isEnabled,
        controller: controller,
        obscureText: isObscure!,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.cyan,
          ),
          focusColor: Colors.amber,
          hintText: hintText,
        ),
      ),
    );
  }
}
