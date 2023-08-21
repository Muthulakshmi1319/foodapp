import 'package:flutter/material.dart';
import 'package:foodapp/loginpage.dart';
import 'package:foodapp/signin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'WELCOME TO TASTE',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 235, 132, 36),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/mas.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  // Within the `FirstRoute` widget

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen1()),
                  );
                },
                child: Container(
                  height: size.height / 14,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 132, 9),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    'login',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  // Within the `FirstRoute` widget

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen2()),
                  );
                },
                child: Container(
                  height: size.height / 14,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 219, 130, 13),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    'sign up',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
