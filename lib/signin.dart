import 'package:flutter/material.dart';
import 'package:foodapp/loginpage.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              const Text('welcome to signup page',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 230, 115, 8))),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'first name',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'last name',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'enter email',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'moblie number',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'create passward',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'confirm passward',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
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
                      color: Color.fromARGB(255, 235, 149, 19),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'submit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 205, 205),
                        fontWeight: FontWeight.bold),
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
