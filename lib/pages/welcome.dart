import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Welcome extends StatelessWidget {
  const Welcome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, fontFamily: "tangerine", color: Colors.purple[100]),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SizedBox( width: double.infinity,
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/login");},
                    style: ButtonStyle(
                      // ignore: prefer_const_constructors
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple,
                        
                      ),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 125, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/signup");},
                    style: ButtonStyle(
                      // ignore: prefer_const_constructors
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple[100],
                        
                      ),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 115, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 27, color: Colors.purple[700]),
                    ),
                  ),
          ],
          
        ),
      ),
    );
  }
}