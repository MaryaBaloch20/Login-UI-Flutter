import 'package:flutter/material.dart';

import '../widgets/my_input_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      "images/Background.png",
                    ),
                    fit: BoxFit.cover)),
            child: const Center(
              child: Image(
                image: AssetImage(
                  "images/Logo.png",
                ),
                width: 100,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 32),
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const MyInputField(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
