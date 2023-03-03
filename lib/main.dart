// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/login.dart';
import 'package:flutter_application_5/pages/signup.dart';
import 'package:flutter_application_5/pages/welcome.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        "/login": (context) => const LoginForm(),
        "/signup": (context) => const SignUp(),
      },
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class Demo extends StatelessWidget {
  const Demo ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            "login",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple),
      
    );
  }
}
