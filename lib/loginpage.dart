import 'package:flutter/material.dart';
import 'package:foodapp/signin.dart';
import 'package:foodapp/welcome.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final _formFilled = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passardController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Form(
            key: _formFilled,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/foo1.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white30),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email id',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.orange)),
                    prefixIcon: const Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter email';
                    }
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (!emailValid) {
                      return 'enter valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white30),
                  keyboardType: TextInputType.emailAddress,
                  controller: passardController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: 'passward',
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Password';
                    } else if (passardController.text.length < 6) {
                      return "password length should not be more then 6 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    if (_formFilled.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Welcome()),
                      );
                      emailController.clear();
                      passardController.clear();
                    }
                  },
                  child: Container(
                    height: size.height / 14,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 174, 41),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'login',
                      style: TextStyle(
                          color: Color.fromARGB(171, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'dont have an account?',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen2()),
                          );
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
