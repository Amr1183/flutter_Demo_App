// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Log in",
          style: TextStyle(
              fontSize: 45,
              fontFamily: "tangerine",
              fontWeight: FontWeight.bold,
              color: Colors.purple[100]),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, '/');
        },
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(66),
                  color: Colors.purple[100],
                ),
                alignment: Alignment.center,
                height: 50,
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email : ",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.purple[900]),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.purple[900],
                      ),
                      labelStyle: TextStyle(fontSize: 33.0),
                      border: InputBorder.none),
                )),
            SizedBox(height: 25),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(66),
                  color: Colors.purple[100],
                ),
                alignment: Alignment.center,
                height: 50,
                width: 300,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password : ",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.purple[900]),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.purple[900],
                      ),
                      suffixIcon:
                          Icon(Icons.visibility, color: Colors.purple[900]),
                      labelStyle: TextStyle(fontSize: 33.0),
                      border: InputBorder.none),
                )),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.purple,
                ),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 125, vertical: 12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: Text(
                "login",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
