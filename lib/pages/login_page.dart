// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thewall/components/button.dart';
import 'package:thewall/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                
                const SizedBox(height: 50,),
                // welvome back message
                Text(
                  "Welcome Back",
                  style: TextStyle(color: Colors.grey[700],),
                ),
            
            
                const SizedBox(height: 50,),
                //email 
                MyTextfield(
                  controller: emailTextController, 
                  hintText: "Email", 
                  obscureText: false
                ),
                
                const SizedBox(height: 10,),
                //pasword

                MyTextfield(
                  controller: passwordTextController, 
                  hintText: "Password", 
                  obscureText: true,
                ),
                //sign in
                MyButton(onTap: (){} , text: "Sign in"),
            
                // go to register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey[700],),
                    ),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}