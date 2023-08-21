import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
                'foody',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 235, 132, 36),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/dell.png',
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  // Within the `FirstRoute` widget

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const signin1()),
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
                    'Get started',
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
