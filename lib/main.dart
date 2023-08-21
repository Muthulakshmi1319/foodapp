import 'package:flutter/material.dart';
import 'package:foodapp/loginsignin.dart';

//GsnIX6ayonfG8RxlfoHBZ9tZIhd2
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff2b2b2b),
        appBarTheme: const AppBarTheme(
          color: Color(0xff2b2b2b),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
