import 'package:flutter/material.dart';

import '../widgets/customtextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "images/images/seller.png",
                height: 270,
              ),
            ),
          ),
          Form(key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                icon: Icons.mail_outline,
                controller: emailController,
                hintText: "Email",
                isObscure: false,
                isEnabled: true,
              ),
              CustomTextField(
                icon: Icons.lock_outline_rounded,
                controller: passwordController,
                hintText: "Password",
                isObscure: true,
                isEnabled: true,
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    primary: Colors.purple
                ), onPressed: () => print("Clicked"),
                child: const Text("Log In",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold   ),
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),)
        ],
      ),
    );
  }
}
