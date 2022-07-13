import 'package:flutter/material.dart';
import 'package:login_ui_flutter/views/login.dart';
import 'package:login_ui_flutter/views/signup.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Center(
                      child: const Text(
                        "Go to Login",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.black,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Center(
                      child: const Text(
                        "Go to Signup",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                )
              ]),
        ),
      ),
    );
  }
}
