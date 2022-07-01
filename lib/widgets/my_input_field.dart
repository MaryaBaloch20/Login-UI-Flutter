import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 32,
              color: Colors.black.withOpacity(.1),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Email",
            style: TextStyle(fontSize: 25),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email Address",
              border: InputBorder.none,
            ),
          )
        ],
      ),
    );
  }
}
