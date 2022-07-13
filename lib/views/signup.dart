import 'package:flutter/material.dart';
import 'package:login_ui_flutter/views/login.dart';
// import 'package:login_ui_flutter/views/signup.dart';

import '../widgets/my_input_field.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _signupState();
}

class _signupState extends State<Signup> {
  // TextEditingController emailController;
  // TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      "images/Background.png",
                    ),
                    fit: BoxFit.cover)),
            child: SafeArea(
              child: Container(
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 48,
                        color: Colors.white,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 38, color: Colors.white),
                      ),
                      SizedBox(
                        width: 24,
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Container(
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 30,
              //   vertical: 80,
              // ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 80,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyInputField(
                        label: "First Name",
                        placeholder: "eg. Marya",
                        textEditingController: TextEditingController(),
                        isPassField: false,
                      ),
                      const SizedBox(height: 20),
                      MyInputField(
                        label: "Second Name",
                        placeholder: "eg. Baloch",
                        textEditingController: TextEditingController(),
                        isPassField: false,
                      ),
                      MyInputField(
                        label: "Email",
                        placeholder: "Email Address",
                        textEditingController: TextEditingController(),
                        isPassField: false,
                      ),
                      const SizedBox(height: 20),
                      MyInputField(
                        label: "Password",
                        placeholder: "Enter new password",
                        textEditingController: TextEditingController(),
                        isPassField: true,
                      ),
                      const SizedBox(height: 20),
                      MyInputField(
                        label: "Confirm Password",
                        placeholder: "Re-enter your password",
                        textEditingController: TextEditingController(),
                        isPassField: true,
                      ),
                      const SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 120),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: const Text(
                              "Login Here",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
