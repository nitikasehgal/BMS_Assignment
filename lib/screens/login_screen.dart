import 'package:bms_project/screens/home_screen.dart';
import 'package:bms_project/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        ClipPath(
          clipper: Clip1(),
          child: Container(
            height: MediaQuery.of(context).size.height / 2 - 30,
            color: const Color(0xff46d2db),
            child: Column(children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                "assets/home_icon.png",
                height: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Find",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 2, fontSize: 30),
                  )
                ],
              )
            ]),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email ID",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Email ID",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 1))),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        suffixIcon: const Icon(Icons.hide_source),
                        hintText: "*****",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1))),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: const loginButton(),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Forgot Password? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Create New Account? ",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}

class Clip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
