// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatelessWidget {
  const SignUp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Sign up",
          style: TextStyle(
              fontSize: 45, fontFamily: "tangerine", fontWeight: FontWeight.bold,  color: Colors.purple[100]),
        ),
        centerTitle: true,
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
                      hintText: "Your Email : ",
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Phone number : ",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.purple[900]),
                      prefixIcon: Icon(
                        Icons.phone,
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
                      hintText: "Confirm your password : ",
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
                    EdgeInsets.symmetric(horizontal: 115, vertical: 12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
