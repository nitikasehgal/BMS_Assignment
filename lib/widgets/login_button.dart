import 'package:flutter/material.dart';

class loginButton extends StatelessWidget {
  const loginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 40, right: 40),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff18477b),
      ),
      child: const Text(
        "Login",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
